import Link from "next/link";
import { notFound } from "next/navigation";
import { fetchChapters, fetchStory } from "@/lib/api";
import ChapterListPlayer from "@/components/ChapterListPlayer";
import FavoriteButton from "@/components/FavoriteButton";

export const dynamic = "force-dynamic";

export default async function StoryDetailPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;

  let story: Awaited<ReturnType<typeof fetchStory>>;
  try {
    story = await fetchStory(slug);
  } catch {
    notFound();
  }

  const chapters = await fetchChapters(slug).catch(() => []);

  return (
    <div>
      <div className="mb-4 flex gap-4">
        <div className="h-40 w-28 shrink-0 overflow-hidden rounded bg-gray-100">
          {story.coverImageUrl ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img src={story.coverImageUrl} alt={story.title} className="h-full w-full object-cover" />
          ) : null}
        </div>
        <div className="min-w-0 flex-1">
          <h1 className="text-2xl font-bold text-gray-900">{story.title}</h1>
          <p className="text-sm text-gray-500">Tác giả: {story.authorName}</p>
          <div className="mt-2 flex flex-wrap gap-1.5">
            {story.genres.map((genre) => (
              <Link
                key={genre.slug}
                href={`/the-loai/${genre.slug}`}
                className="rounded bg-indigo-50 px-2 py-0.5 text-xs text-indigo-600 hover:bg-indigo-100"
              >
                {genre.name}
              </Link>
            ))}
          </div>
          <p className="mt-2 text-sm text-gray-600">{story.description}</p>
          <div className="mt-3">
            <FavoriteButton storyId={story.id} />
          </div>
        </div>
      </div>

      <h2 className="mb-3 text-lg font-bold text-gray-900">Danh sách chương</h2>
      <ChapterListPlayer chapters={chapters} />
    </div>
  );
}
