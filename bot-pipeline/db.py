from __future__ import annotations

import uuid
import psycopg2
import psycopg2.extras
from contextlib import contextmanager

from config import DATABASE_URL
from utils import slugify


@contextmanager
def get_connection():
    conn = psycopg2.connect(DATABASE_URL)
    try:
        yield conn
        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()


def insert_source_material(conn, source_url: str, genre_hint: str, title: str, raw_text: str) -> str:
    material_id = str(uuid.uuid4())
    with conn.cursor() as cur:
        cur.execute(
            """
            INSERT INTO source_materials (id, source_url, genre_hint, title, raw_text)
            VALUES (%s, %s, %s, %s, %s)
            """,
            (material_id, source_url, genre_hint, title, raw_text),
        )
    return material_id


def get_source_materials_by_genre(conn, genre_hint: str, limit: int = 3) -> list[dict]:
    with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
        cur.execute(
            """
            SELECT id, source_url, genre_hint, title, raw_text, used_count
            FROM source_materials
            WHERE genre_hint = %s
            ORDER BY used_count ASC, crawled_at ASC
            LIMIT %s
            """,
            (genre_hint, limit),
        )
        return cur.fetchall()


def increment_used_count(conn, source_material_ids: list[str]) -> None:
    if not source_material_ids:
        return
    with conn.cursor() as cur:
        cur.execute(
            "UPDATE source_materials SET used_count = used_count + 1 WHERE id = ANY(%s)",
            (source_material_ids,),
        )


def get_or_create_genre(conn, name: str) -> str:
    slug = slugify(name)
    with conn.cursor() as cur:
        cur.execute("SELECT id FROM genres WHERE slug = %s", (slug,))
        row = cur.fetchone()
        if row:
            return row[0]

        genre_id = str(uuid.uuid4())
        cur.execute(
            "INSERT INTO genres (id, name, slug) VALUES (%s, %s, %s)",
            (genre_id, name, slug),
        )
        return genre_id


def _unique_slug(cur, base_slug: str) -> str:
    slug = base_slug
    suffix = 1
    while True:
        cur.execute("SELECT 1 FROM stories WHERE slug = %s", (slug,))
        if cur.fetchone() is None:
            return slug
        suffix += 1
        slug = f"{base_slug}-{suffix}"


def create_generated_story(
    conn,
    title: str,
    description: str,
    genre_names: list[str],
    generation_model: str,
    chapters: list[dict],
    source_material_ids: list[str],
) -> str:
    """Ghi 1 truyện AI sinh ra + các chương (status='pending') + liên kết
    thể loại và nguồn cảm hứng (audit nội bộ)."""
    genre_ids = [get_or_create_genre(conn, name) for name in genre_names]

    with conn.cursor() as cur:
        base_slug = slugify(title)
        slug = _unique_slug(cur, base_slug)

        story_id = str(uuid.uuid4())
        cur.execute(
            """
            INSERT INTO stories (id, title, slug, description, generation_model, total_chapters, updated_at)
            VALUES (%s, %s, %s, %s, %s, %s, now())
            """,
            (story_id, title, slug, description, generation_model, len(chapters)),
        )

        for genre_id in genre_ids:
            cur.execute(
                "INSERT INTO story_genres (story_id, genre_id) VALUES (%s, %s)",
                (story_id, genre_id),
            )

        for source_material_id in source_material_ids:
            cur.execute(
                "INSERT INTO story_inspirations (story_id, source_material_id) VALUES (%s, %s)",
                (story_id, source_material_id),
            )

        for chapter in chapters:
            chapter_id = str(uuid.uuid4())
            cur.execute(
                """
                INSERT INTO chapters (id, story_id, chapter_number, title, text_content, status, updated_at)
                VALUES (%s, %s, %s, %s, %s, 'pending', now())
                """,
                (chapter_id, story_id, chapter["chapter_number"], chapter["title"], chapter["text_content"]),
            )

    increment_used_count(conn, source_material_ids)
    return story_id


def get_pending_chapters(conn, limit: int = 10) -> list[dict]:
    with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
        cur.execute(
            """
            SELECT id, story_id, chapter_number, title, text_content
            FROM chapters
            WHERE status = 'pending'
            ORDER BY created_at ASC
            LIMIT %s
            """,
            (limit,),
        )
        return cur.fetchall()


def update_chapter_status(conn, chapter_id: str, status: str) -> None:
    with conn.cursor() as cur:
        cur.execute(
            "UPDATE chapters SET status = %s, updated_at = now() WHERE id = %s",
            (status, chapter_id),
        )


def mark_chapter_ready(conn, chapter_id: str, audio_url: str, duration_seconds: int) -> None:
    with conn.cursor() as cur:
        cur.execute(
            """
            UPDATE chapters
            SET status = 'ready', audio_url = %s, audio_duration_seconds = %s, updated_at = now()
            WHERE id = %s
            """,
            (audio_url, duration_seconds, chapter_id),
        )


def count_stories_by_genre(conn, genre_names: list[str]) -> dict[str, int]:
    """Số truyện đã có cho từng thể loại (thể loại chưa có truyện nào -> 0)."""
    counts = {name: 0 for name in genre_names}
    with conn.cursor() as cur:
        cur.execute(
            """
            SELECT g.name, count(sg.story_id)
            FROM genres g
            LEFT JOIN story_genres sg ON sg.genre_id = g.id
            WHERE g.name = ANY(%s)
            GROUP BY g.name
            """,
            (genre_names,),
        )
        for name, count in cur.fetchall():
            counts[name] = count
    return counts


def count_source_materials(conn, genre_hint: str) -> int:
    with conn.cursor() as cur:
        cur.execute("SELECT count(*) FROM source_materials WHERE genre_hint = %s", (genre_hint,))
        return cur.fetchone()[0]


def get_stories_for_covers(conn, only_missing: bool = True) -> list[dict]:
    """Truyện cần vẽ bìa (kèm mô tả + thể loại). only_missing=False: lấy tất cả để vẽ lại."""
    where = "WHERE s.cover_image_url IS NULL" if only_missing else ""
    with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
        cur.execute(
            f"""
            SELECT s.id, s.title, COALESCE(s.description, '') AS description,
                   COALESCE(array_agg(g.name ORDER BY g.name) FILTER (WHERE g.name IS NOT NULL), '{{}}') AS genres
            FROM stories s
            LEFT JOIN story_genres sg ON sg.story_id = s.id
            LEFT JOIN genres g ON g.id = sg.genre_id
            {where}
            GROUP BY s.id
            ORDER BY s.created_at
            """
        )
        return cur.fetchall()


def set_story_cover(conn, story_id: str, cover_url: str) -> None:
    with conn.cursor() as cur:
        cur.execute(
            "UPDATE stories SET cover_image_url = %s, updated_at = now() WHERE id = %s",
            (cover_url, story_id),
        )
