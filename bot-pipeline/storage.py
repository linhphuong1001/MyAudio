from __future__ import annotations

import requests

from config import SUPABASE_AUDIO_BUCKET, SUPABASE_SERVICE_KEY, SUPABASE_URL


def upload_file(path: str, data: bytes, content_type: str) -> str:
    """Upload 1 file lên Supabase Storage (bucket public), trả về URL công khai.
    `path` có thể chứa thư mục con, vd: 'covers/<story_id>.png'."""
    upload_url = f"{SUPABASE_URL}/storage/v1/object/{SUPABASE_AUDIO_BUCKET}/{path}"
    resp = requests.put(
        upload_url,
        data=data,
        headers={
            "Authorization": f"Bearer {SUPABASE_SERVICE_KEY}",
            "apikey": SUPABASE_SERVICE_KEY,
            "Content-Type": content_type,
            "x-upsert": "true",
        },
        timeout=60,
    )
    resp.raise_for_status()
    return f"{SUPABASE_URL}/storage/v1/object/public/{SUPABASE_AUDIO_BUCKET}/{path}"


def upload_audio(file_name: str, data: bytes) -> str:
    return upload_file(file_name, data, "audio/mpeg")
