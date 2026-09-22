import Link from "next/link";
import { fetchGenres } from "@/lib/api";

export default async function GenreChips({ activeSlug }: { activeSlug?: string }) {
  let genres: Awaited<ReturnType<typeof fetchGenres>> = [];
  try {
    genres = await fetchGenres();
  } catch {
    return null;
  }

  if (genres.length === 0) return null;

  return (
    <div className="mb-4 flex flex-wrap gap-2">
      <Link
        href="/"
        className={`rounded-full px-3 py-1 text-sm ${
          !activeSlug ? "bg-indigo-600 text-white" : "bg-white text-gray-700 border border-gray-200"
        }`}
      >
        Tất cả
      </Link>
      {genres.map((genre) => (
        <Link
          key={genre.slug}
          href={`/the-loai/${genre.slug}`}
          className={`rounded-full px-3 py-1 text-sm ${
            activeSlug === genre.slug
              ? "bg-indigo-600 text-white"
              : "bg-white text-gray-700 border border-gray-200"
          }`}
        >
          {genre.name} ({genre.storyCount})
        </Link>
      ))}
    </div>
  );
}
