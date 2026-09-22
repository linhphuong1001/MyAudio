import re
from unidecode import unidecode


def slugify(text: str) -> str:
    ascii_text = unidecode(text).lower()
    ascii_text = re.sub(r"[^a-z0-9]+", "-", ascii_text)
    return ascii_text.strip("-")
