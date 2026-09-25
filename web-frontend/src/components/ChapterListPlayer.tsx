"use client";

import { useState } from "react";
import AudioPlayer from "./AudioPlayer";
import type { Chapter } from "@/lib/api";

function chapterLabel(chapter: Chapter): string {
  return /^chương\s*\d+/i.test(chapter.title)
    ? chapter.title
    : `Chương ${chapter.chapterNumber}: ${chapter.title}`;
}

export default function ChapterListPlayer({ chapters }: { chapters: Chapter[] }) {
  const readyChapters = chapters.filter((c) => c.audioUrl);
  const [selected, setSelected] = useState<Chapter | null>(readyChapters[0] ?? null);

  if (readyChapters.length === 0) {
    return <p className="text-sm text-gray-500">Truyện chưa có chương nào sẵn sàng để nghe.</p>;
  }

  return (
    <div>
      {selected?.audioUrl && (
        <div className="mb-4">
          <p className="mb-2 text-sm font-medium text-gray-700">
            Đang nghe: {chapterLabel(selected)}
          </p>
          <AudioPlayer key={selected.id} src={selected.audioUrl} />
        </div>
      )}

      <ul className="divide-y divide-gray-100 rounded-lg border border-gray-200 bg-white">
        {readyChapters.map((chapter) => (
          <li key={chapter.id}>
            <button
              onClick={() => setSelected(chapter)}
              className={`w-full px-4 py-2 text-left text-sm hover:bg-gray-50 ${
                selected?.id === chapter.id ? "bg-indigo-50 font-medium text-indigo-700" : "text-gray-700"
              }`}
            >
              {chapterLabel(chapter)}
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
}
