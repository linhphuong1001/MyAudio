from __future__ import annotations

import json
import time

from google import genai
from google.genai.errors import ServerError

from config import GEMINI_API_KEY, GEMINI_MODEL
from db import create_generated_story, get_connection, get_source_materials_by_genre

INSPIRATION_EXCERPT_CHARS = 800
MAX_RETRIES = 6
RETRY_BACKOFF_SECONDS = 15

_client: genai.Client | None = None


def _get_client() -> genai.Client:
    """Khởi tạo client Gemini khi thực sự cần dùng, không phải lúc import
    module — để lệnh crawl/tts vẫn chạy được mà không cần GEMINI_API_KEY."""
    global _client
    if _client is None:
        _client = genai.Client(api_key=GEMINI_API_KEY)
    return _client


def _generate_text(prompt: str) -> str:
    """Gemini free tier hay gặp lỗi 503 tạm thời khi quá tải — retry vài lần
    trước khi thực sự báo lỗi cho tầng gọi phía trên."""
    for attempt in range(1, MAX_RETRIES + 1):
        try:
            response = _get_client().models.generate_content(model=GEMINI_MODEL, contents=prompt)
            return response.text
        except ServerError as exc:
            if attempt == MAX_RETRIES:
                raise
            wait_seconds = RETRY_BACKOFF_SECONDS * attempt
            print(f"[generator] Gemini lỗi tạm thời ({exc}), thử lại sau {wait_seconds}s ({attempt}/{MAX_RETRIES})...")
            time.sleep(wait_seconds)
    raise RuntimeError("unreachable")


def build_inspiration_context(source_materials: list[dict]) -> str:
    """Chỉ lấy TRÍCH ĐOẠN ngắn để nắm văn phong/mô-típ, không đưa nguyên văn
    dài — tránh mô hình chép lại gần giống bản gốc."""
    parts = []
    for i, sm in enumerate(source_materials, 1):
        excerpt = sm["raw_text"][:INSPIRATION_EXCERPT_CHARS]
        parts.append(f"[Truyện tham khảo {i} - thể loại {sm['genre_hint']}]\n{excerpt}")
    return "\n\n".join(parts)


def generate_outline(genre: str, inspiration_context: str) -> dict:
    prompt = f"""Bạn là một tác giả truyện {genre} tiếng Việt.
Dưới đây là vài đoạn trích từ các truyện {genre} khác để bạn tham khảo VĂN PHONG
và MÔ-TÍP chung của thể loại (không được sao chép tên nhân vật, tên riêng,
hay bất kỳ đoạn văn nào bên dưới):

{inspiration_context}

Hãy SÁNG TÁC một truyện {genre} HOÀN TOÀN MỚI, với nhân vật và cốt truyện
của riêng bạn. Chỉ trả về JSON đúng format sau, không thêm chữ nào khác:
{{
  "title": "Tên truyện mới",
  "characters": ["Nhân vật A - mô tả ngắn", "Nhân vật B - mô tả ngắn"],
  "plot_summary": "Tóm tắt cốt truyện tổng thể",
  "total_chapters": 10
}}"""
    return json.loads(_strip_json_fence(_generate_text(prompt)))


def generate_chapter(outline: dict, chapter_number: int, previous_summary: str) -> str:
    prompt = f"""Truyện: {outline['title']}
Nhân vật: {', '.join(outline['characters'])}
Cốt truyện tổng thể: {outline['plot_summary']}
Tóm tắt các chương trước: {previous_summary or '(đây là chương đầu tiên)'}

Hãy viết CHƯƠNG {chapter_number} của truyện này bằng tiếng Việt,
độ dài khoảng 1500-2000 chữ, văn phong mạch lạc, có cao trào hợp lý
cho 1 chương truyện audio. Chỉ trả về nội dung chương, không thêm ghi chú."""
    return _generate_text(prompt)


def _strip_json_fence(text: str) -> str:
    stripped = text.strip()
    if stripped.startswith("```"):
        stripped = stripped.split("\n", 1)[1] if "\n" in stripped else stripped
        if stripped.endswith("```"):
            stripped = stripped.rsplit("```", 1)[0]
    return stripped.strip()


def generate_and_save_story(genre: str, num_sources: int = 3) -> str | None:
    """Chọn N SourceMaterials ít bị dùng nhất cùng thể loại, sinh 1 truyện mới
    qua Gemini, và ghi Story + Chapters (status='pending') vào DB."""
    with get_connection() as conn:
        source_materials = get_source_materials_by_genre(conn, genre, limit=num_sources)
        if len(source_materials) < num_sources:
            print(f"[generator] Chưa đủ SourceMaterials cho thể loại '{genre}' (cần {num_sources}).")
            return None

        context = build_inspiration_context(source_materials)
        outline = generate_outline(genre, context)
        print(f"[generator] Outline: {outline['title']} ({outline['total_chapters']} chương dự kiến)")

        chapters = []
        previous_summary = ""
        for chapter_number in range(1, outline["total_chapters"] + 1):
            text_content = generate_chapter(outline, chapter_number, previous_summary)
            chapters.append(
                {
                    "chapter_number": chapter_number,
                    "title": f"Chương {chapter_number}",
                    "text_content": text_content,
                }
            )
            previous_summary += f"\nChương {chapter_number}: {text_content[:300]}..."
            print(f"[generator] Đã sinh chương {chapter_number}/{outline['total_chapters']}")

        story_id = create_generated_story(
            conn,
            title=outline["title"],
            description=outline["plot_summary"],
            genre_name=genre,
            generation_model=GEMINI_MODEL,
            chapters=chapters,
            source_material_ids=[sm["id"] for sm in source_materials],
        )
        print(f"[generator] Đã lưu Story {story_id}: {outline['title']}")
        return story_id


if __name__ == "__main__":
    generate_and_save_story(genre="Kiếm hiệp", num_sources=3)
