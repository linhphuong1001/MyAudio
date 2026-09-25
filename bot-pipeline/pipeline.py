from __future__ import annotations

import argparse
import os

from mutagen.mp3 import MP3

from config import AUDIO_OUTPUT_DIR, AUDIO_PUBLIC_BASE_URL, SUPABASE_URL
from crawler import crawl_and_store, crawl_genre
from db import get_connection, get_pending_chapters, mark_chapter_ready, update_chapter_status
from generator import generate_and_save_story
from storage import upload_audio
from tts import synthesize


def run_crawl(urls: list[str]) -> None:
    crawl_and_store(urls)


def run_generate(genre: str, num_sources: int) -> None:
    generate_and_save_story(genre=genre, num_sources=num_sources)


def run_tts(provider: str, limit: int) -> None:
    os.makedirs(AUDIO_OUTPUT_DIR, exist_ok=True)

    with get_connection() as conn:
        chapters = get_pending_chapters(conn, limit=limit)

    if not chapters:
        print("[tts] Không có chương nào đang chờ xử lý.")
        return

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

        file_name = f"{chapter['story_id']}_{chapter['chapter_number']}.mp3"
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

    generate_parser = subparsers.add_parser("generate", help="Dùng Gemini sinh 1 truyện mới")
    generate_parser.add_argument("genre", help="Thể loại cần sinh, vd: 'Kiếm hiệp'")
    generate_parser.add_argument("--num-sources", type=int, default=3)

    tts_parser = subparsers.add_parser("tts", help="Chuyển các chương đang pending thành audio")
    tts_parser.add_argument("--provider", choices=["opensource", "fpt", "gtts", "edge"], default="opensource")
    tts_parser.add_argument("--limit", type=int, default=10)

    args = parser.parse_args()

    if args.command == "crawl":
        run_crawl(args.urls)
    elif args.command == "crawl-genre":
        crawl_genre(args.url, args.genre, args.limit)
    elif args.command == "generate":
        run_generate(args.genre, args.num_sources)
    elif args.command == "tts":
        run_tts(args.provider, args.limit)
