import GenreChips from "@/components/GenreChips";
import StoryCard from "@/components/StoryCard";
import { getStories } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function GenrePage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;

  let stories: Awaited<ReturnType<typeof getStories>> = [];
  let loadError: string | null = null;
  try {
    stories = await getStories({ genre: slug });
  } catch {
    loadError = "Không kết nối được tới máy chủ.";
  }

  return (
    <div>
      <GenreChips activeSlug={slug} />

      {loadError ? (
        <p className="rounded bg-yellow-50 p-4 text-sm text-yellow-800">{loadError}</p>
      ) : (
        <div className="grid grid-cols-1 gap-3 sm:grid-cols-2">
          {stories.map((story) => (
            <StoryCard key={story.id} story={story} />
          ))}
          {stories.length === 0 && <p className="text-sm text-gray-500">Chưa có truyện nào ở thể loại này.</p>}
        </div>
      )}
    </div>
  );
}
