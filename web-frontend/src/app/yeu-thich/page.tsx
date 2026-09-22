"use client";

import { useEffect, useState } from "react";
import { useAuth } from "@/lib/auth-context";
import { fetchFavorites, type StorySummary } from "@/lib/api";
import StoryCard from "@/components/StoryCard";

export default function FavoritesPage() {
  const { token, isLoading: isAuthLoading } = useAuth();
  const [favorites, setFavorites] = useState<StorySummary[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    if (isAuthLoading) return;
    if (!token) {
      setIsLoading(false);
      return;
    }
    fetchFavorites(token)
      .then(setFavorites)
      .catch((err) => setError(err instanceof Error ? err.message : "Không tải được danh sách"))
      .finally(() => setIsLoading(false));
  }, [token, isAuthLoading]);

  if (isAuthLoading || isLoading) {
    return <p className="text-sm text-gray-500">Đang tải...</p>;
  }

  if (!token) {
    return (
      <p className="text-sm text-gray-500">
        Bạn cần{" "}
        <a href="/dang-nhap" className="text-indigo-600 hover:underline">
          đăng nhập
        </a>{" "}
        để xem danh sách Yêu thích.
      </p>
    );
  }

  return (
    <div>
      <h1 className="mb-4 text-xl font-bold text-gray-900">Truyện yêu thích</h1>
      {error && <p className="text-sm text-red-600">{error}</p>}
      <div className="grid grid-cols-1 gap-3 sm:grid-cols-2">
        {favorites.map((story) => (
          <StoryCard key={story.id} story={story} />
        ))}
        {favorites.length === 0 && <p className="text-sm text-gray-500">Chưa có truyện yêu thích nào.</p>}
      </div>
    </div>
  );
}
