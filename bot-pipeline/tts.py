import asyncio
import io
import time
import requests
import edge_tts
from gtts import gTTS

from config import FPT_AI_API_KEY

FPT_TTS_URL = "https://api.fpt.ai/hmi/tts/v5"
EDGE_TTS_VOICE = "vi-VN-HoaiMyNeural"
EDGE_TTS_RATE = "+15%"
EDGE_TTS_MAX_RETRIES = 5


def synthesize_fpt(text: str, voice: str = "banmai") -> bytes:
    """Gọi FPT.AI TTS API (production). API trả về ngay 1 URL async (mp3 sẽ
    sẵn sàng sau vài giây), phải poll URL đó tới khi tải được file thật sự."""
    headers = {
        "api-key": FPT_AI_API_KEY,
        "voice": voice,
        "speed": "0",
    }
    resp = requests.post(FPT_TTS_URL, data=text.encode("utf-8"), headers=headers)
    resp.raise_for_status()
    audio_url = resp.json()["async"]

    for _ in range(30):
        time.sleep(1)
        audio_resp = requests.get(audio_url)
        if audio_resp.status_code == 200 and audio_resp.content:
            return audio_resp.content
    raise TimeoutError("TTS audio not ready after 30s")


def synthesize_opensource(text: str) -> bytes:
    """Placeholder cho model mã nguồn mở tự host (viXTTS/VietTTS/Coqui) —
    dùng cho production free theo phương án trong plan (chất lượng giọng đọc
    tốt hơn gTTS, chạy hoàn toàn offline). Cắm thư viện TTS cụ thể vào đây;
    giữ nguyên chữ ký hàm (text: str) -> bytes."""
    raise NotImplementedError(
        "Cắm model TTS mã nguồn mở ở đây, ví dụ dùng thư viện `TTS` của Coqui "
        "hoặc viXTTS. Giữ nguyên chữ ký hàm (text: str) -> bytes."
    )


def synthesize_gtts(text: str) -> bytes:
    """Google Text-to-Speech (gTTS) — miễn phí, không cần API key, chỉ dùng
    để TEST nhanh vì đây là API không chính thức của Google Translate, không
    có SLA/cam kết ổn định cho production."""
    buffer = io.BytesIO()
    gTTS(text=text, lang="vi").write_to_fp(buffer)
    return buffer.getvalue()


def synthesize_edge(text: str) -> bytes:
    """Giọng neural chính thức của Microsoft Edge — tự nhiên hơn gTTS/Gemini
    rõ rệt, nhưng server không chính thức này thi thoảng chập chờn nên cần
    retry vài lần trước khi báo lỗi thật."""

    async def _run() -> bytes:
        for attempt in range(1, EDGE_TTS_MAX_RETRIES + 1):
            try:
                buffer = io.BytesIO()
                communicate = edge_tts.Communicate(text, EDGE_TTS_VOICE, rate=EDGE_TTS_RATE)
                async for chunk in communicate.stream():
                    if chunk["type"] == "audio":
                        buffer.write(chunk["data"])
                return buffer.getvalue()
            except edge_tts.exceptions.NoAudioReceived:
                if attempt == EDGE_TTS_MAX_RETRIES:
                    raise
                await asyncio.sleep(2 * attempt)
        raise RuntimeError("unreachable")

    return asyncio.run(_run())


def synthesize(text: str, provider: str = "opensource") -> bytes:
    if provider == "fpt":
        return synthesize_fpt(text)
    if provider == "gtts":
        return synthesize_gtts(text)
    if provider == "edge":
        return synthesize_edge(text)
    return synthesize_opensource(text)
