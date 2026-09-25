from __future__ import annotations

import os
import subprocess
import tempfile

import imageio_ffmpeg
import requests
from mutagen.mp3 import MP3

FADE_SECONDS = 3
MUSIC_VOLUME = 0.12  # nhạc nhỏ để không át giọng đọc


def find_music_file() -> str | None:
    """Tìm file nhạc nền theo thứ tự: BACKGROUND_MUSIC_FILE -> assets/music/background.mp3
    -> tải từ BACKGROUND_MUSIC_URL (dùng trên GitHub Actions, file không nằm trong git).
    Không có nguồn nào -> không trộn, giữ giọng đọc thuần."""
    path = os.environ.get("BACKGROUND_MUSIC_FILE") or os.path.join(
        os.path.dirname(__file__), "assets", "music", "background.mp3"
    )
    if os.path.isfile(path):
        return path

    url = os.environ.get("BACKGROUND_MUSIC_URL")
    if not url:
        return None
    cached = os.path.join(tempfile.gettempdir(), "audioapp_background_music.mp3")
    if not os.path.isfile(cached):
        print(f"[mixer] Tải nhạc nền từ {url}")
        response = requests.get(url, timeout=120)
        response.raise_for_status()
        with open(cached, "wb") as f:
            f.write(response.content)
    return cached


def mix_background(
    voice_mp3: bytes, music_path: str, music_volume: float = MUSIC_VOLUME, voice_tempo: float = 1.0
) -> bytes:
    """Trộn nhạc nền (lặp lại nếu ngắn hơn) vào giọng đọc: nhạc chạy suốt chương,
    fade-in đầu, fade-out cuối. voice_tempo < 1 làm giọng đọc chậm lại (giữ nguyên cao độ),
    độ dài kết quả = độ dài giọng đọc sau khi đổi tốc độ."""
    with tempfile.TemporaryDirectory() as tmp:
        voice_path = os.path.join(tmp, "voice.mp3")
        out_path = os.path.join(tmp, "mixed.mp3")
        with open(voice_path, "wb") as f:
            f.write(voice_mp3)

        duration = MP3(voice_path).info.length / voice_tempo
        fade_out_start = max(duration - FADE_SECONDS, 0)

        voice_chain = f"[0:a]atempo={voice_tempo:.4f}[voice];" if voice_tempo != 1.0 else ""
        voice_label = "[voice]" if voice_tempo != 1.0 else "[0:a]"
        filter_graph = (
            f"{voice_chain}[1:a]volume={music_volume},afade=t=in:st=0:d={FADE_SECONDS}[music];"
            f"{voice_label}[music]amix=inputs=2:duration=first:dropout_transition=0:normalize=0,"
            f"afade=t=out:st={fade_out_start:.2f}:d={FADE_SECONDS}[out]"
        )
        command = [
            imageio_ffmpeg.get_ffmpeg_exe(), "-y", "-loglevel", "error",
            "-i", voice_path,
            "-stream_loop", "-1", "-i", music_path,
            "-filter_complex", filter_graph,
            "-map", "[out]", "-t", f"{duration:.2f}",
            "-ac", "1", "-ar", "24000", "-b:a", "64k",
            out_path,
        ]
        subprocess.run(command, check=True)
        with open(out_path, "rb") as f:
            return f.read()
