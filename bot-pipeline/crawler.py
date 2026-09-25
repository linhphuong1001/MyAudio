from __future__ import annotations

import time

import requests
from bs4 import BeautifulSoup

from db import get_connection, insert_source_material

USER_AGENT = "Mozilla/5.0 (compatible; AudioStoryBot/1.0)"
REQUEST_DELAY_SECONDS = 1.5
MAX_CHAPTERS = 30
MAX_LISTING_PAGES = 5


def _get_soup(url: str) -> BeautifulSoup:
    resp = requests.get(url, timeout=20, headers={"User-Agent": USER_AGENT})
    resp.raise_for_status()
    return BeautifulSoup(resp.text, "html.parser")


def crawl_story(story_url: str, genre_override: str | None = None) -> dict:
    """Crawl 1 truyện từ tiemchungot.com: tiêu đề, thể loại, mô tả và nội dung
    các chương. Dữ liệu CHỈ dùng làm cảm hứng nội bộ cho AI, không đăng lại.
    Selector viết riêng cho cấu trúc HTML của trang này."""
    soup = _get_soup(story_url)

    title = soup.select_one("h1.detail-title").get_text(strip=True)
    genres = [a.get_text(strip=True) for a in soup.select("a.cate-item[itemprop=genre]")]
    description_el = soup.select_one(".detail-desc")
    description = description_el.get_text("\n", strip=True) if description_el else ""

    chapter_urls = [a["href"] for a in soup.select("a.chapter-row")][:MAX_CHAPTERS]

    chapter_texts = []
    for url in chapter_urls:
        time.sleep(REQUEST_DELAY_SECONDS)
        chapter_soup = _get_soup(url)
        reader = chapter_soup.select_one("#reader")
        if reader is None:
            continue
        for tag in reader.select("script, style, ins, .ads"):
            tag.decompose()
        chapter_texts.append(reader.get_text("\n", strip=True))

    raw_text = description + "\n\n" + "\n\n".join(chapter_texts)

    return {
        "source_url": story_url,
        "genre_hint": genre_override or (genres[0] if genres else "Khác"),
        "title": title,
        "raw_text": raw_text.strip(),
    }


def _already_crawled(conn, source_url: str) -> bool:
    with conn.cursor() as cur:
        cur.execute("SELECT 1 FROM source_materials WHERE source_url = %s", (source_url,))
        return cur.fetchone() is not None


def crawl_and_store(story_urls: list[str], genre_override: str | None = None) -> list[str]:
    """Crawl nhiều URL truyện, lưu mỗi truyện thành 1 SourceMaterial (bỏ qua
    URL đã crawl). Trả về danh sách id đã lưu."""
    saved_ids = []
    for url in story_urls:
        with get_connection() as conn:
            if _already_crawled(conn, url):
                print(f"[crawler] Bỏ qua (đã crawl): {url}")
                continue

        try:
            data = crawl_story(url, genre_override)
        except Exception as exc:  # noqa: BLE001 - crawler cần bền bỉ, log và bỏ qua URL lỗi
            print(f"[crawler] Lỗi khi crawl {url}: {exc}")
            continue

        with get_connection() as conn:
            material_id = insert_source_material(
                conn, data["source_url"], data["genre_hint"], data["title"], data["raw_text"]
            )
        saved_ids.append(material_id)
        print(
            f"[crawler] Đã lưu '{data['title']}' [{data['genre_hint']}] "
            f"({len(data['raw_text'])} ký tự) -> {material_id}"
        )
        time.sleep(REQUEST_DELAY_SECONDS)

    return saved_ids


def list_story_urls(genre_page_url: str) -> list[str]:
    """Lấy danh sách URL truyện (giữ thứ tự, bỏ trùng) từ 1 trang danh sách thể loại."""
    soup = _get_soup(genre_page_url)
    urls = []
    for a in soup.select("a[href*='/truyen/']"):
        href = a["href"].split("#")[0].split("?")[0]
        if href.startswith("https://www.tiemchungot.com/truyen/") and href not in urls:
            urls.append(href)
    return urls


def crawl_genre(genre_page_url: str, genre_name: str, limit: int) -> list[str]:
    """Crawl tối đa `limit` truyện CHƯA crawl từ trang danh sách thể loại,
    gán genre_hint = genre_name để khớp với thể loại dùng khi sinh truyện."""
    saved_ids: list[str] = []
    for page in range(1, MAX_LISTING_PAGES + 1):
        if len(saved_ids) >= limit:
            break
        page_url = genre_page_url if page == 1 else f"{genre_page_url}?page={page}"
        try:
            candidates = list_story_urls(page_url)
        except requests.RequestException as exc:
            print(f"[crawler] Không tải được trang danh sách {page_url}: {exc}")
            break
        if not candidates:
            break

        for url in candidates:
            if len(saved_ids) >= limit:
                break
            saved_ids += crawl_and_store([url], genre_override=genre_name)
        time.sleep(REQUEST_DELAY_SECONDS)
    return saved_ids


if __name__ == "__main__":
    crawl_and_store(["https://www.tiemchungot.com/truyen/tham-hoa-nuong-tu"])
