from __future__ import annotations

import argparse
import os
import random
import re
import time
from concurrent.futures import ThreadPoolExecutor

import requests
from mutagen.mp3 import MP3

from config import AUDIO_OUTPUT_DIR, AUDIO_PUBLIC_BASE_URL, SUPABASE_URL
from crawler import crawl_and_store, crawl_genre
from covers import render_cover
from db import (
    count_source_materials,
    count_stories_by_genre,
    get_connection,
    get_pending_chapters,
    get_ready_chapters_without_bgm,
    get_stories_for_covers,
    mark_chapter_ready,
    set_story_cover,
    update_chapter_status,
)
from generator import generate_and_save_story
from genres import BASE_GENRE_SLUGS, THEMES_BY_BASE, all_themes, canonical_name, genre_listing_url
from mixer import find_music_file, mix_background
from storage import upload_audio, upload_file
from tts import synthesize

NUM_SOURCES = 3
LEGACY_VOICE_TEMPO = 1.05 / 1.15  # chương cũ đọc +15%, đưa về mức +5% như chương mới
MAX_COMBO_ATTEMPTS = 3


def run_crawl(urls: list[str]) -> None:
    crawl_and_store(urls)


def run_generate(genre: str, num_sources: int) -> None:
    generate_and_save_story(genre=genre, num_sources=num_sources)


def _try_combo(base: str, theme: str | None) -> str | None:
    """Bổ sung nguồn cảm hứng cho thể loại nền (thiếu thì crawl cho đủ, đủ rồi
    vẫn thêm 1 nguồn mới cho đa dạng) rồi sinh 1 truyện với chủ đề đã chọn.
    Trả về story_id hoặc None nếu không sinh được."""
    listing_url = genre_listing_url(base)
    if listing_url:
        with get_connection() as conn:
            existing = count_source_materials(conn, base)
        to_crawl = max(NUM_SOURCES - existing, 1)
        print(f"[auto] Thể loại nền '{base}': có {existing} nguồn, crawl thêm {to_crawl}")
        crawl_genre(listing_url, base, limit=to_crawl)

    return generate_and_save_story(genre=base, num_sources=NUM_SOURCES, theme=theme)


def run_auto(genre: str | None, theme: str | None) -> None:
    """Tự chọn cặp (thể loại nền, chủ đề) đang có ÍT truyện nhất để web phát triển
    đa dạng; hòa thì chọn ngẫu nhiên. Có thể chỉ định cứng --genre và/hoặc --theme.
    Nếu cặp được chọn không đủ nguồn thì thử cặp kế tiếp."""
    genre = canonical_name(genre, list(BASE_GENRE_SLUGS))
    theme = canonical_name(theme, all_themes())
    bases = [genre] if genre else list(BASE_GENRE_SLUGS)
    combos: list[tuple[str, str | None]] = []
    for base in bases:
        themes = [theme] if theme else (THEMES_BY_BASE.get(base) or [None])
        combos += [(base, t) for t in themes]

    names = list({n for combo in combos for n in combo if n})
    with get_connection() as conn:
        counts = count_stories_by_genre(conn, names)

    random.shuffle(combos)
    combos.sort(key=lambda c: (counts.get(c[1], 0) if c[1] else 0, counts.get(c[0], 0)))
    print("[auto] Số truyện hiện có:", {n: counts[n] for n in sorted(names)})

    for base, chosen_theme in combos[:MAX_COMBO_ATTEMPTS]:
        print(f"[auto] Thử: {base} + {chosen_theme or '(không chủ đề)'}")
        story_id = _try_combo(base, chosen_theme)
        if story_id:
            print(f"[auto] Đã sinh truyện {base} + {chosen_theme}: {story_id}")
            return

    raise SystemExit("[auto] Không cặp thể loại nào sinh được truyện.")


def _make_cover(story: dict) -> tuple[dict, str]:
    png = render_cover(story["title"], list(story["genres"]), story["description"])
    file_name = f"covers/{story['id']}-{int(time.time())}.png"  # đổi tên mỗi lần để tránh cache ảnh cũ
    if SUPABASE_URL:
        url = upload_file(file_name, png, "image/png")
    else:
        os.makedirs(os.path.join(AUDIO_OUTPUT_DIR, "covers"), exist_ok=True)
        with open(os.path.join(AUDIO_OUTPUT_DIR, file_name), "wb") as f:
            f.write(png)
        url = f"{AUDIO_PUBLIC_BASE_URL}/{file_name}"
    return story, url


def run_covers(redo_all: bool, titles: list[str] | None = None) -> None:
    """Vẽ bìa minh họa theo nội dung cho truyện chưa có bìa (hoặc tất cả nếu --all),
    upload lên Supabase và lưu URL vào DB. Vẽ song song 3 ảnh vì AI Horde có hàng đợi."""
    with get_connection() as conn:
        stories = get_stories_for_covers(conn, only_missing=not (redo_all or titles))
    if titles:
        wanted = {t.strip().lower() for t in titles}
        stories = [st for st in stories if st["title"].lower() in wanted]

    if not stories:
        print("[covers] Mọi truyện đều đã có bìa.")
        return

    print(f"[covers] Cần vẽ {len(stories)} bìa...")
    with ThreadPoolExecutor(max_workers=3) as pool:
        for story, url in pool.map(_make_cover, stories):
            with get_connection() as conn:
                set_story_cover(conn, story["id"], url)
            print(f"[covers] Xong '{story['title']}' -> {url}")


def run_remix() -> None:
    """Trộn nhạc nền + làm chậm giọng vào các chương ĐÃ có audio: tải file giọng đọc thuần, xử lý,
    upload thành file mới (đuôi -bgm2, tránh cache) và cập nhật audio_url."""
    music_path = find_music_file()
    if not music_path:
        raise SystemExit("[remix] Không tìm thấy file nhạc nền (assets/music/background.mp3 hoặc BACKGROUND_MUSIC_URL).")

    with get_connection() as conn:
        chapters = get_ready_chapters_without_bgm(conn)
    print(f"[remix] {len(chapters)} chương cần trộn nhạc nền")

    for chapter in chapters:
        original_url = re.sub(r"(-bgm2?)?.mp3$", ".mp3", chapter["audio_url"])  # luôn lấy file giọng đọc thuần
        voice = requests.get(original_url, timeout=120)
        voice.raise_for_status()
        mixed = mix_background(voice.content, music_path, voice_tempo=LEGACY_VOICE_TEMPO)

        file_name = f"{chapter['story_id']}_{chapter['chapter_number']}-bgm2.mp3"
        new_url = upload_audio(file_name, mixed)

        tmp_path = os.path.join(AUDIO_OUTPUT_DIR, file_name)
        os.makedirs(AUDIO_OUTPUT_DIR, exist_ok=True)
        with open(tmp_path, "wb") as f:
            f.write(mixed)
        duration_seconds = int(MP3(tmp_path).info.length)

        with get_connection() as conn:
            mark_chapter_ready(conn, chapter["id"], new_url, duration_seconds)
        print(f"[remix] Xong chương {chapter['chapter_number']} ({chapter['story_id'][:8]}) -> {new_url}")


def run_tts(provider: str, limit: int) -> None:
    os.makedirs(AUDIO_OUTPUT_DIR, exist_ok=True)

    with get_connection() as conn:
        chapters = get_pending_chapters(conn, limit=limit)

    if not chapters:
        print("[tts] Không có chương nào đang chờ xử lý.")
        return

    music_path = find_music_file()
    if music_path:
        print(f"[tts] Sẽ trộn nhạc nền: {os.path.basename(music_path)}")

    for chapter in chapters:
        with get_connection() as conn:
            update_chapter_status(conn, chapter["id"], "processing_tts")

        try:
            audio_bytes = synthesize(chapter["text_content"], provider=provider)
        except Exception as exc:  # noqa: BLE001 - đánh dấu failed để có thể requeue sau
            print(f"[tts] Lỗi TTS chương {chapter['id']}: {exc}")
            with get_connection() as conn:
                update_chapter_status(conn, chapter["id"], "failed")
            continue

        if music_path:
            audio_bytes = mix_background(audio_bytes, music_path)

        suffix = "-bgm2" if music_path else ""
        file_name = f"{chapter['story_id']}_{chapter['chapter_number']}{suffix}.mp3"
        file_path = os.path.join(AUDIO_OUTPUT_DIR, file_name)
        with open(file_path, "wb") as f:
            f.write(audio_bytes)

        duration_seconds = int(MP3(file_path).info.length)

        if SUPABASE_URL:
            audio_url = upload_audio(file_name, audio_bytes)
        else:
            audio_url = f"{AUDIO_PUBLIC_BASE_URL}/{file_name}"

        with get_connection() as conn:
            mark_chapter_ready(conn, chapter["id"], audio_url, duration_seconds)
        print(f"[tts] Xong chương {chapter['chapter_number']} ({duration_seconds}s) -> {audio_url}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="AudioApp bot pipeline: crawl / generate / tts")
    subparsers = parser.add_subparsers(dest="command", required=True)

    crawl_parser = subparsers.add_parser("crawl", help="Crawl truyện nguồn làm cảm hứng")
    crawl_parser.add_argument("urls", nargs="+", help="Danh sách URL truyện cần crawl")

    genre_crawl_parser = subparsers.add_parser("crawl-genre", help="Crawl thêm truyện từ trang danh sách thể loại")
    genre_crawl_parser.add_argument("url", help="URL trang danh sách thể loại")
    genre_crawl_parser.add_argument("genre", help="Tên thể loại lưu vào genre_hint, vd: 'Cổ Đại'")
    genre_crawl_parser.add_argument("--limit", type=int, default=2, help="Số truyện mới tối đa mỗi lần chạy")

    auto_parser = subparsers.add_parser("auto", help="Tự chọn thể loại ít truyện nhất: crawl nguồn + sinh truyện")
    auto_parser.add_argument("--genre", default="", help="Thể loại nền (Cổ Đại/Hiện Đại), để trống = tự chọn")
    auto_parser.add_argument("--theme", default="", help="Chủ đề (vd: Xuyên Không), để trống = tự chọn")

    generate_parser = subparsers.add_parser("generate", help="Dùng Gemini sinh 1 truyện mới")
    generate_parser.add_argument("genre", help="Thể loại cần sinh, vd: 'Kiếm hiệp'")
    generate_parser.add_argument("--num-sources", type=int, default=3)

    subparsers.add_parser("remix", help="Trộn nhạc nền vào các chương đã có audio giọng đọc thuần")

    covers_parser = subparsers.add_parser("covers", help="Vẽ bìa minh họa cho các truyện chưa có bìa")
    covers_parser.add_argument("--all", action="store_true", help="Vẽ lại bìa cho TẤT CẢ truyện")
    covers_parser.add_argument("--title", action="append", help="Chỉ vẽ lại bìa cho truyện có tên này (dùng nhiều lần được)")

    tts_parser = subparsers.add_parser("tts", help="Chuyển các chương đang pending thành audio")
    tts_parser.add_argument("--provider", choices=["opensource", "fpt", "gtts", "edge"], default="opensource")
    tts_parser.add_argument("--limit", type=int, default=10)

    args = parser.parse_args()

    if args.command == "crawl":
        run_crawl(args.urls)
    elif args.command == "auto":
        run_auto(args.genre or None, args.theme or None)
    elif args.command == "crawl-genre":
        crawl_genre(args.url, args.genre, args.limit)
    elif args.command == "generate":
        run_generate(args.genre, args.num_sources)
    elif args.command == "remix":
        run_remix()
    elif args.command == "covers":
        run_covers(args.all, args.title)
    elif args.command == "tts":
        run_tts(args.provider, args.limit)
