import GenreChips from "@/components/GenreChips";
import StoryCard from "@/components/StoryCard";
import { getStories } from "@/lib/data";

export const dynamic = "force-dynamic";

export default async function HomePage() {
  let newStories: Awaited<ReturnType<typeof getStories>> = [];
  let hotStories: Awaited<ReturnType<typeof getStories>> = [];
  let loadError: string | null = null;

  try {
    [newStories, hotStories] = await Promise.all([
      getStories({ sort: "new" }),
      getStories({ sort: "hot" }),
    ]);
  } catch (error) {
    console.error("[HomePage] Không tải được danh sách truyện:", error);
    loadError = "Không tải được danh sách truyện lúc này. Vui lòng thử lại sau ít phút.";
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
