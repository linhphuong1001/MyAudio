import Link from "next/link";
import type { StorySummary } from "@/lib/api";

export default function StoryCard({ story }: { story: StorySummary }) {
  return (
    <Link
      href={`/truyen/${story.slug}`}
      className="flex gap-3 rounded-lg border border-gray-200 bg-white p-3 hover:shadow-md transition-shadow"
    >
      <div className="h-24 w-16 shrink-0 overflow-hidden rounded bg-gray-100">
        {story.coverImageUrl ? (
          // eslint-disable-next-line @next/next/no-img-element
          <img src={story.coverImageUrl} alt={story.title} className="h-full w-full object-cover" />
        ) : (
          <div className="flex h-full w-full items-center justify-center text-xs text-gray-400">
            No Cover
          </div>
        )}
      </div>
      <div className="min-w-0 flex-1">
        <h3 className="truncate font-semibold text-gray-900">{story.title}</h3>
        <p className="text-xs text-gray-500">{story.authorName}</p>
        <div className="mt-1 flex flex-wrap gap-1">
          {story.genres.slice(0, 3).map((genre) => (
            <span key={genre.slug} className="rounded bg-indigo-50 px-1.5 py-0.5 text-[11px] text-indigo-600">
              {genre.name}
            </span>
          ))}
        </div>
        <p className="mt-1 text-xs text-gray-400">{story.totalChapters} chương · {story.viewCount} lượt nghe</p>
      </div>
    </Link>
  );
}
