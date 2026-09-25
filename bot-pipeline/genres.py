from __future__ import annotations

SOURCE_BASE_URL = "https://www.tiemchungot.com/the-loai"

# Thể loại nền: có truyện thật trên trang nguồn để bot crawl làm cảm hứng.
# (Đã kiểm tra: trang nguồn chỉ có truyện ở Cổ Đại và Hiện Đại; các thể loại
# khác trên trang đều trống.) Thêm trang nguồn mới -> thêm thể loại nền ở đây.
BASE_GENRE_SLUGS: dict[str, str] = {
    "Cổ Đại": "co-dai",
    "Hiện Đại": "hien-dai",
}

# Chủ đề chồng lên thể loại nền để đa dạng hoá truyện sinh ra, chỉ ghép những
# cặp hợp lý (vd. Cung Đấu chỉ hợp Cổ Đại, Học Đường chỉ hợp Hiện Đại).
THEMES_BY_BASE: dict[str, list[str]] = {
    "Cổ Đại": [
        "Xuyên Không", "Trọng Sinh", "Cung Đấu", "Gia Đấu", "Trả Thù",
        "Nữ Cường", "Sủng", "Ngược", "Hài Hước", "Trinh Thám", "Huyền Huyễn", "Linh Dị",
    ],
    "Hiện Đại": [
        "Trọng Sinh", "Trả Thù", "Nữ Cường", "Sủng", "Ngược", "Hài Hước",
        "Trinh Thám", "Linh Dị", "Học Đường", "Hào Môn Thế Gia", "Showbiz", "Mạt Thế",
    ],
}


def genre_listing_url(genre_name: str) -> str | None:
    slug = BASE_GENRE_SLUGS.get(genre_name)
    return f"{SOURCE_BASE_URL}/{slug}" if slug else None


def all_themes() -> list[str]:
    seen: list[str] = []
    for themes in THEMES_BY_BASE.values():
        for theme in themes:
            if theme not in seen:
                seen.append(theme)
    return seen
