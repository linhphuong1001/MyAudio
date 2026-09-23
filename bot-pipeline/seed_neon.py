"""
seed_neon.py
Copy toàn bộ Genres/Stories/StoryGenres/Chapters từ Postgres local (dev) sang
Neon (production) — dùng 1 lần khi đã có nội dung thật ở local muốn đẩy lên
production, không dùng cho vận hành thường xuyên (production nên tự sinh dữ
liệu qua GitHub Actions).
"""
from __future__ import annotations

import psycopg2
import psycopg2.extras

LOCAL_DSN = "postgresql://audioapp:audioapp_dev_password@localhost:5432/audioapp"
NEON_DSN = (
    "postgresql://neondb_owner:npg_eywDpXU47MQf@"
    "ep-restless-recipe-b38c27nn-pooler.c-4.ap-southeast-1.aws.neon.tech/neondb"
    "?sslmode=require"
)

TABLES_IN_ORDER = ["genres", "source_materials", "stories", "story_genres", "chapters", "story_inspirations"]


def fetch_rows(conn, table: str) -> list[dict]:
    with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
        cur.execute(f"SELECT * FROM {table}")
        return [dict(row) for row in cur.fetchall()]


def upsert_rows(conn, table: str, rows: list[dict]) -> None:
    if not rows:
        return
    columns = list(rows[0].keys())
    col_list = ", ".join(columns)
    placeholders = ", ".join(["%s"] * len(columns))
    update_list = ", ".join(f"{c}=EXCLUDED.{c}" for c in columns if c not in ("id",))

    with conn.cursor() as cur:
        for row in rows:
            values = [row[c] for c in columns]
            if "id" in columns and update_list:
                sql = (
                    f"INSERT INTO {table} ({col_list}) VALUES ({placeholders}) "
                    f"ON CONFLICT (id) DO UPDATE SET {update_list}"
                )
            else:
                sql = f"INSERT INTO {table} ({col_list}) VALUES ({placeholders}) ON CONFLICT DO NOTHING"
            cur.execute(sql, values)
    conn.commit()


def main() -> None:
    local_conn = psycopg2.connect(LOCAL_DSN)
    neon_conn = psycopg2.connect(NEON_DSN)
    try:
        for table in TABLES_IN_ORDER:
            rows = fetch_rows(local_conn, table)
            upsert_rows(neon_conn, table, rows)
            print(f"[seed] {table}: {len(rows)} dòng")
    finally:
        local_conn.close()
        neon_conn.close()


if __name__ == "__main__":
    main()
