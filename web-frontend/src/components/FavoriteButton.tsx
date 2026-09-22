"use client";

import { useState } from "react";
import { useAuth } from "@/lib/auth-context";
import { addFavorite, removeFavorite } from "@/lib/api";

export default function FavoriteButton({ storyId }: { storyId: string }) {
  const { token } = useAuth();
  const [isFavorited, setIsFavorited] = useState(false);
  const [isPending, setIsPending] = useState(false);

  if (!token) {
    return (
      <a href="/dang-nhap" className="text-sm text-indigo-600 hover:underline">
        Đăng nhập để lưu vào Yêu thích
      </a>
    );
  }

  const handleClick = async () => {
    setIsPending(true);
    try {
      if (isFavorited) {
        await removeFavorite(token, storyId);
        setIsFavorited(false);
      } else {
        await addFavorite(token, storyId);
        setIsFavorited(true);
      }
    } catch (error) {
      console.error(error);
    } finally {
      setIsPending(false);
    }
  };

  return (
    <button
      onClick={handleClick}
      disabled={isPending}
      className={`rounded px-3 py-1.5 text-sm ${
        isFavorited ? "bg-red-50 text-red-600" : "bg-indigo-600 text-white"
      } disabled:opacity-50`}
    >
      {isFavorited ? "♥ Đã yêu thích" : "♡ Thêm vào Yêu thích"}
    </button>
  );
}
