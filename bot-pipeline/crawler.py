from __future__ import annotations

import requests
from bs4 import BeautifulSoup

from db import get_connection, insert_source_material

USER_AGENT = "Mozilla/5.0 (compatible; AudioStoryBot/1.0)"


def crawl_story(story_url: str) -> dict:
    """Crawl title, thể loại và toàn bộ nội dung 1 truyện từ trang nguồn.
    Selector CSS cần chỉnh theo đúng cấu trúc HTML của trang nguồn cụ thể.
    Dữ liệu lấy về CHỈ dùng làm cảm hứng nội bộ, không đăng trực tiếp.
    """
    resp = requests.get(story_url, timeout=15, headers={"User-Agent": USER_AGENT})
    resp.raise_for_status()
    soup = BeautifulSoup(resp.text, "html.parser")

    title = soup.select_one(".story-title").get_text(strip=True)
    genre_hint = soup.select_one(".story-genre").get_text(strip=True)
    content_el = soup.select_one(".story-content")
    for tag in content_el.select("script, ins, .ads"):
        tag.decompose()
    raw_text = content_el.get_text(separator="\n", strip=True)

    return {
        "source_url": story_url,
        "genre_hint": genre_hint,
        "title": title,
        "raw_text": raw_text,
    }


def crawl_and_store(story_urls: list[str]) -> list[str]:
    """Crawl nhiều URL truyện, lưu mỗi truyện thành 1 SourceMaterial.
    Trả về danh sách id đã lưu."""
    saved_ids = []
    with get_connection() as conn:
        for url in story_urls:
            try:
                data = crawl_story(url)
            except Exception as exc:  # noqa: BLE001 - crawler cần bền bỉ, log và bỏ qua URL lỗi
                print(f"[crawler] Lỗi khi crawl {url}: {exc}")
                continue

            material_id = insert_source_material(
                conn, data["source_url"], data["genre_hint"], data["title"], data["raw_text"]
            )
            saved_ids.append(material_id)
            print(f"[crawler] Đã lưu SourceMaterial {material_id}: {data['title']}")

    return saved_ids


if __name__ == "__main__":
    example_urls = [
        "https://example-source-site.com/truyen-a",
        "https://example-source-site.com/truyen-b",
        "https://example-source-site.com/truyen-c",
    ]
    crawl_and_store(example_urls)
