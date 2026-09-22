import GenreChips from "@/components/GenreChips";
import StoryCard from "@/components/StoryCard";
import { fetchStories } from "@/lib/api";

export const dynamic = "force-dynamic";

export default async function HomePage() {
  let newStories: Awaited<ReturnType<typeof fetchStories>> = [];
  let hotStories: Awaited<ReturnType<typeof fetchStories>> = [];
  let loadError: string | null = null;

  try {
    [newStories, hotStories] = await Promise.all([
      fetchStories({ sort: "new" }),
      fetchStories({ sort: "hot" }),
    ]);
  } catch {
    loadError = "Không kết nối được tới máy chủ. Hãy đảm bảo web-backend đang chạy.";
  }

  return (
    <div>
      <GenreChips />

      {loadError ? (
        <p className="rounded bg-yellow-50 p-4 text-sm text-yellow-800">{loadError}</p>
      ) : (
        <>
          <section className="mb-8">
            <h2 className="mb-3 text-xl font-bold text-gray-900">Truyện mới</h2>
            <div className="grid grid-cols-1 gap-3 sm:grid-cols-2">
              {newStories.map((story) => (
                <StoryCard key={story.id} story={story} />
              ))}
              {newStories.length === 0 && <p className="text-sm text-gray-500">Chưa có truyện nào.</p>}
            </div>
          </section>

          <section>
            <h2 className="mb-3 text-xl font-bold text-gray-900">Truyện hot</h2>
            <div className="grid grid-cols-1 gap-3 sm:grid-cols-2">
              {hotStories.map((story) => (
                <StoryCard key={story.id} story={story} />
              ))}
              {hotStories.length === 0 && <p className="text-sm text-gray-500">Chưa có truyện nào.</p>}
            </div>
          </section>
        </>
      )}
    </div>
  );
}
