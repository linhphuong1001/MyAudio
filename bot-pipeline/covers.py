from __future__ import annotations

import hashlib
import io
import math
import os
import random
import time

import requests
from PIL import Image, ImageDraw, ImageFilter, ImageFont

WIDTH, HEIGHT = 600, 800
FONT_DIR = os.path.join(os.path.dirname(__file__), "assets", "fonts")

# (màu trên, màu dưới, màu nhấn) theo "phong cách" bìa.
PALETTES = {
    "cổ điển": ((246, 214, 200), (120, 62, 90), (255, 244, 230)),
    "hiện đại": ((70, 96, 168), (24, 28, 64), (255, 214, 170)),
    "bí ẩn": ((92, 104, 120), (14, 18, 30), (210, 220, 235)),
    "huyền ảo": ((132, 96, 190), (26, 22, 66), (240, 226, 255)),
}

MYSTERY_THEMES = {"trinh thám", "linh dị", "mạt thế"}
FANTASY_THEMES = {"huyền huyễn", "tiên hiệp", "kiếm hiệp", "xuyên không"}
MODERN_GENRES = {"hiện đại", "học đường", "showbiz"}

HORDE_URL = "https://aihorde.net/api/v2"
HORDE_HEADERS = {"apikey": "0000000000", "Client-Agent": "audioapp:1.0:anon", "Content-Type": "application/json"}
HORDE_TIMEOUT_SECONDS = 420
NEGATIVE_PROMPT = (
    "text, letters, words, watermark, signature, logo, calligraphy, chinese characters, "
    "blurry, deformed, extra fingers, low quality"
)

STYLE_SUFFIX = {
    "cổ điển": "ancient Chinese romance novel cover, traditional gongbi painting style, elegant, highly detailed, warm colors",
    "hiện đại": "modern Asian romance novel cover illustration, semi-realistic digital art, cinematic lighting, detailed",
    "bí ẩn": "dark moody mystery thriller book cover illustration, dramatic lighting, cinematic, detailed",
    "huyền ảo": "wuxia fantasy novel cover, epic ink and watercolor illustration, dramatic sky, detailed",
}


def pick_style(genre_names: list[str]) -> str:
    lowered = {g.lower() for g in genre_names}
    if lowered & MYSTERY_THEMES:
        return "bí ẩn"
    if lowered & FANTASY_THEMES:
        return "huyền ảo"
    if lowered & MODERN_GENRES:
        return "hiện đại"
    return "cổ điển"


def _font(bold: bool, size: int) -> ImageFont.FreeTypeFont:
    name = "NotoSerif-Bold.ttf" if bold else "NotoSerif-Regular.ttf"
    return ImageFont.truetype(os.path.join(FONT_DIR, name), size)


def _gradient(top: tuple, bottom: tuple) -> Image.Image:
    img = Image.new("RGB", (WIDTH, HEIGHT))
    px = img.load()
    for y in range(HEIGHT):
        t = y / (HEIGHT - 1)
        color = tuple(int(top[i] + (bottom[i] - top[i]) * t) for i in range(3))
        for x in range(WIDTH):
            px[x, y] = color
    return img


def _mountains(draw: ImageDraw.ImageDraw, rng: random.Random, base_color: tuple, layers: int) -> None:
    for layer in range(layers):
        base_y = HEIGHT * (0.52 + 0.1 * layer)
        amp = 70 - layer * 12
        phase = rng.uniform(0, 6.28)
        freq = rng.uniform(1.4, 2.6)
        shade = 0.55 + 0.15 * layer
        color = tuple(int(c * shade) for c in base_color)
        points = [(0, HEIGHT)]
        for x in range(0, WIDTH + 12, 12):
            y = base_y - amp * abs(math.sin(x / WIDTH * math.pi * freq + phase)) - rng.uniform(0, 8)
            points.append((x, y))
        points.append((WIDTH, HEIGHT))
        draw.polygon(points, fill=color)


def _skyline(draw: ImageDraw.ImageDraw, rng: random.Random, accent: tuple) -> None:
    x = 0
    while x < WIDTH:
        w = rng.randint(28, 64)
        h = rng.randint(120, 380)
        shade = rng.randint(18, 46)
        draw.rectangle([x, HEIGHT - h, x + w, HEIGHT], fill=(shade, shade, shade + 24))
        for wy in range(HEIGHT - h + 14, HEIGHT - 10, 22):
            for wx in range(x + 6, x + w - 6, 12):
                if rng.random() < 0.35:
                    draw.rectangle([wx, wy, wx + 5, wy + 8], fill=accent)
        x += w + rng.randint(0, 6)


def _celestial(img: Image.Image, rng: random.Random, accent: tuple) -> None:
    glow = Image.new("RGBA", img.size, (0, 0, 0, 0))
    gd = ImageDraw.Draw(glow)
    cx, cy, r = rng.randint(190, 410), rng.randint(190, 300), rng.randint(58, 86)
    for i in range(7, 0, -1):
        alpha = int(22 * (8 - i))
        gd.ellipse([cx - r - i * 14, cy - r - i * 14, cx + r + i * 14, cy + r + i * 14], fill=accent + (alpha,))
    gd.ellipse([cx - r, cy - r, cx + r, cy + r], fill=accent + (235,))
    glow = glow.filter(ImageFilter.GaussianBlur(3))
    img.paste(glow, (0, 0), glow)


def _mist(img: Image.Image, rng: random.Random) -> None:
    mist = Image.new("RGBA", img.size, (0, 0, 0, 0))
    md = ImageDraw.Draw(mist)
    for _ in range(9):
        y = rng.randint(int(HEIGHT * 0.42), int(HEIGHT * 0.9))
        h = rng.randint(30, 70)
        md.ellipse([-80, y, WIDTH + 80, y + h], fill=(235, 240, 250, rng.randint(24, 46)))
    mist = mist.filter(ImageFilter.GaussianBlur(18))
    img.paste(mist, (0, 0), mist)


def _wrap(draw: ImageDraw.ImageDraw, text: str, font: ImageFont.FreeTypeFont, max_width: int) -> list[str]:
    lines: list[str] = []
    current = ""
    for word in text.split():
        candidate = f"{current} {word}".strip()
        if draw.textlength(candidate, font=font) <= max_width:
            current = candidate
        else:
            if current:
                lines.append(current)
            current = word
    if current:
        lines.append(current)
    return lines


def build_image_prompt(title: str, description: str, genre_names: list[str]) -> str:
    """Nhờ Gemini viết 1 câu mô tả cảnh minh hoạ (tiếng Anh) từ nội dung truyện để
    ảnh bìa bám sát câu chuyện. Lỗi/hết quota thì dùng mô tả chung theo thể loại."""
    style = STYLE_SUFFIX[pick_style(genre_names)]
    scene = ""
    try:
        from generator import _generate_text

        scene = _generate_text(
            "Bạn là họa sĩ minh họa bìa sách. Dựa vào tên truyện và tóm tắt dưới đây, viết ĐÚNG MỘT câu "
            "prompt bằng tiếng Anh (tối đa 45 từ) mô tả một cảnh minh họa bìa sách: nhân vật chính (tuổi, "
            "trang phục), bối cảnh và không khí. Không có chữ viết trong tranh, không nhắc tên riêng. "
            "Chỉ trả về câu prompt.\n\n"
            f"Tên truyện: {title}\nThể loại: {', '.join(genre_names)}\nTóm tắt: {description[:900]}"
        ).strip().strip('"')
    except Exception as exc:  # noqa: BLE001 - có thể hết quota Gemini, không chặn việc tạo bìa
        print(f"[covers] Không nhờ Gemini viết prompt được ({type(exc).__name__}), dùng mô tả chung.")
    if not scene:
        scene = f"illustration for a novel titled '{title}', {', '.join(genre_names)}"
    return f"{scene}, {style}"


def generate_ai_image(prompt: str) -> Image.Image | None:
    """Vẽ ảnh bằng AI Horde (miễn phí, ẩn danh, hàng đợi ~1-3 phút). Trả về None nếu lỗi/quá hạn."""
    try:
        resp = requests.post(
            f"{HORDE_URL}/generate/async",
            headers=HORDE_HEADERS,
            json={
                "prompt": f"{prompt} ### {NEGATIVE_PROMPT}",
                "params": {"width": 512, "height": 768, "steps": 25, "n": 1, "sampler_name": "k_euler_a", "cfg_scale": 7},
                "nsfw": False,
                "censor_nsfw": True,
                "r2": True,
            },
            timeout=30,
        )
        resp.raise_for_status()
        job_id = resp.json()["id"]

        deadline = time.time() + HORDE_TIMEOUT_SECONDS
        while time.time() < deadline:
            time.sleep(6)
            check = requests.get(f"{HORDE_URL}/generate/check/{job_id}", timeout=30).json()
            if check.get("faulted"):
                return None
            if check.get("done"):
                break
        else:
            return None

        status = requests.get(f"{HORDE_URL}/generate/status/{job_id}", timeout=30).json()
        generations = status.get("generations") or []
        if not generations or generations[0].get("censored"):
            return None
        raw = requests.get(generations[0]["img"], timeout=60).content
        return Image.open(io.BytesIO(raw)).convert("RGB")
    except (requests.RequestException, KeyError, ValueError, OSError) as exc:
        print(f"[covers] AI Horde lỗi: {exc}")
        return None


def _fit_cover(image: Image.Image) -> Image.Image:
    scale = max(WIDTH / image.width, HEIGHT / image.height)
    resized = image.resize((int(image.width * scale) + 1, int(image.height * scale) + 1), Image.LANCZOS)
    left, top = (resized.width - WIDTH) // 2, (resized.height - HEIGHT) // 2
    return resized.crop((left, top, left + WIDTH, top + HEIGHT))


def _procedural_background(title: str, genre_names: list[str]) -> Image.Image:
    style = pick_style(genre_names)
    top, bottom, accent = PALETTES[style]
    rng = random.Random(int(hashlib.md5(title.encode("utf-8")).hexdigest(), 16))
    shift = rng.randint(-14, 14)
    top = tuple(max(0, min(255, c + shift)) for c in top)

    img = _gradient(top, bottom)
    _celestial(img, rng, accent)
    draw = ImageDraw.Draw(img)
    if {g.lower() for g in genre_names} & MODERN_GENRES:
        _skyline(draw, rng, accent)
    else:
        _mountains(draw, rng, bottom, layers=4)
    if style in ("bí ẩn", "huyền ảo"):
        _mist(img, rng)
    return img


def _overlay_title(img: Image.Image, title: str, genre_names: list[str]) -> Image.Image:
    accent = PALETTES[pick_style(genre_names)][2]

    shade = Image.new("RGBA", img.size, (0, 0, 0, 0))
    sd = ImageDraw.Draw(shade)
    for y in range(int(HEIGHT * 0.58), HEIGHT):
        alpha = int(205 * (y - HEIGHT * 0.58) / (HEIGHT * 0.42))
        sd.line([(0, y), (WIDTH, y)], fill=(0, 0, 0, alpha))
    canvas = img.convert("RGBA")
    canvas.alpha_composite(shade)
    img = canvas.convert("RGB")
    draw = ImageDraw.Draw(img)

    draw.rectangle([22, 22, WIDTH - 22, HEIGHT - 22], outline=accent, width=2)
    draw.rectangle([30, 30, WIDTH - 30, HEIGHT - 30], outline=accent, width=1)

    title_font = _font(True, 50)
    lines = _wrap(draw, title, title_font, WIDTH - 110)
    while len(lines) > 4 and title_font.size > 30:
        title_font = _font(True, title_font.size - 4)
        lines = _wrap(draw, title, title_font, WIDTH - 110)
    line_h = title_font.size + 12
    y = HEIGHT - 170 - line_h * len(lines)
    for line in lines:
        w = draw.textlength(line, font=title_font)
        draw.text(((WIDTH - w) / 2 + 2, y + 2), line, font=title_font, fill=(0, 0, 0))
        draw.text(((WIDTH - w) / 2, y), line, font=title_font, fill=(255, 255, 255))
        y += line_h

    tag = "  ·  ".join(genre_names[:2]).upper()
    tag_font = _font(False, 22)
    tw = draw.textlength(tag, font=tag_font)
    draw.text(((WIDTH - tw) / 2, HEIGHT - 120), tag, font=tag_font, fill=accent)
    brand_font = _font(False, 18)
    bw = draw.textlength("TruyệnAudio", font=brand_font)
    draw.text(((WIDTH - bw) / 2, HEIGHT - 70), "TruyệnAudio", font=brand_font, fill=(230, 230, 230))
    return img


def render_cover(title: str, genre_names: list[str], description: str = "", use_ai: bool = True) -> bytes:
    """Ảnh bìa PNG 600x800: tranh AI minh họa đúng nội dung truyện (nếu vẽ được),
    không thì nền vẽ bằng code theo thể loại; sau đó chèn tiêu đề + thể loại."""
    background = None
    if use_ai:
        prompt = build_image_prompt(title, description, genre_names)
        print(f"[covers] Prompt: {prompt}")
        ai_image = generate_ai_image(prompt)
        if ai_image is not None:
            background = _fit_cover(ai_image)
    if background is None:
        background = _procedural_background(title, genre_names)

    buffer = io.BytesIO()
    _overlay_title(background, title, genre_names).save(buffer, format="PNG", optimize=True)
    return buffer.getvalue()
