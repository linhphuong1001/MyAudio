import StoryCard from "@/components/StoryCard";
import { fetchStories } from "@/lib/api";

export const dynamic = "force-dynamic";

export default async function SearchPage({
  searchParams,
}: {
  searchParams: Promise<{ q?: string }>;
}) {
  const { q } = await searchParams;

  let stories: Awaited<ReturnType<typeof fetchStories>> = [];
  let loadError: string | null = null;
  if (q) {
    try {
      stories = await fetchStories({ search: q });
    } catch {
      loadError = "Không kết nối được tới máy chủ.";
    }
  }

  return (
    <div>
      <h1 className="mb-4 text-xl font-bold text-gray-900">
        Kết quả tìm kiếm{q ? ` cho "${q}"` : ""}
      </h1>

      {loadError ? (
        <p className="rounded bg-yellow-50 p-4 text-sm text-yellow-800">{loadError}</p>
      ) : (
        <div className="grid grid-cols-1 gap-3 sm:grid-cols-2">
          {stories.map((story) => (
            <StoryCard key={story.id} story={story} />
          ))}
          {q && stories.length === 0 && <p className="text-sm text-gray-500">Không tìm thấy truyện phù hợp.</p>}
        </div>
      )}
    </div>
  );
}
