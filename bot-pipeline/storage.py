from __future__ import annotations

import requests

from config import SUPABASE_AUDIO_BUCKET, SUPABASE_SERVICE_KEY, SUPABASE_URL


def upload_audio(file_name: str, data: bytes) -> str:
    """Upload 1 file mp3 lên Supabase Storage (bucket public), trả về URL
    công khai để lưu vào Chapter.audio_url."""
    upload_url = f"{SUPABASE_URL}/storage/v1/object/{SUPABASE_AUDIO_BUCKET}/{file_name}"
    resp = requests.put(
        upload_url,
        data=data,
        headers={
            "Authorization": f"Bearer {SUPABASE_SERVICE_KEY}",
            "apikey": SUPABASE_SERVICE_KEY,
            "Content-Type": "audio/mpeg",
            "x-upsert": "true",
        },
        timeout=60,
    )
    resp.raise_for_status()
    return f"{SUPABASE_URL}/storage/v1/object/public/{SUPABASE_AUDIO_BUCKET}/{file_name}"
