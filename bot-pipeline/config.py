import os
import sys
from dotenv import load_dotenv

# Console Windows mặc định dùng cp1252, không in được tiếng Việt có dấu
# (crash với UnicodeEncodeError) — ép stdout/stderr sang UTF-8 ngay khi
# bất kỳ module nào của pipeline được import.
if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8")
    sys.stderr.reconfigure(encoding="utf-8")

load_dotenv()

DATABASE_URL = os.environ["DATABASE_URL"]
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY", "")
GEMINI_MODEL = os.environ.get("GEMINI_MODEL", "gemini-flash-latest")
FPT_AI_API_KEY = os.environ.get("FPT_AI_API_KEY", "")
AUDIO_OUTPUT_DIR = os.environ.get("AUDIO_OUTPUT_DIR", "./output/audio")
AUDIO_PUBLIC_BASE_URL = os.environ.get("AUDIO_PUBLIC_BASE_URL", "http://localhost:8080/audio")

SUPABASE_URL = os.environ.get("SUPABASE_URL", "")
SUPABASE_SERVICE_KEY = os.environ.get("SUPABASE_SERVICE_KEY", "")
SUPABASE_AUDIO_BUCKET = os.environ.get("SUPABASE_AUDIO_BUCKET", "audio")
