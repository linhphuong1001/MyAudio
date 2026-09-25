from __future__ import annotations

import os
import subprocess
import tempfile

import imageio_ffmpeg
from mutagen.mp3 import MP3

FADE_SECONDS = 3
MUSIC_VOLUME = 0.12  # nhạc nhỏ để không át giọng đọc


def find_music_file() -> str | None:
    """Đường dẫn file nhạc nền (biến môi trường BACKGROUND_MUSIC_FILE hoặc
    assets/music/background.mp3). Không có file -> không trộn, giữ giọng đọc thuần."""
    path = os.environ.get("BACKGROUND_MUSIC_FILE") or os.path.join(
        os.path.dirname(__file__), "assets", "music", "background.mp3"
    )
    return path if os.path.isfile(path) else None


def mix_background(voice_mp3: bytes, music_path: str, music_volume: float = MUSIC_VOLUME) -> bytes:
    """Trộn nhạc nền (lặp lại nếu ngắn hơn) vào giọng đọc: nhạc chạy suốt chương,
    fade-in đầu, fade-out cuối. Độ dài kết quả = độ dài giọng đọc."""
    with tempfile.TemporaryDirectory() as tmp:
        voice_path = os.path.join(tmp, "voice.mp3")
        out_path = os.path.join(tmp, "mixed.mp3")
        with open(voice_path, "wb") as f:
            f.write(voice_mp3)

        duration = MP3(voice_path).info.length
        fade_out_start = max(duration - FADE_SECONDS, 0)

        filter_graph = (
            f"[1:a]volume={music_volume},afade=t=in:st=0:d={FADE_SECONDS}[music];"
            f"[0:a][music]amix=inputs=2:duration=first:dropout_transition=0:normalize=0,"
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
