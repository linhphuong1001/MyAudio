"use client";

import { useEffect, useRef, useState } from "react";

const VIDEO_ID = "6OWG8_FkDf8";
const MUSIC_TITLE = "Nhắm Mắt Thấy Mùa Hè – Piano Instrumental Cover";
const MUSIC_CHANNEL = "Boi Ngoc (Nancy)";
const DEFAULT_VOLUME = 12; // thấp để không át giọng đọc
const STORAGE_KEY = "audioapp_bgm";

interface YouTubePlayer {
  playVideo: () => void;
  pauseVideo: () => void;
  setVolume: (volume: number) => void;
  destroy: () => void;
}

interface YouTubeApi {
  Player: new (
    element: HTMLElement,
    options: {
      videoId: string;
      playerVars: Record<string, string | number>;
      events: { onReady: () => void };
    },
  ) => YouTubePlayer;
}

declare global {
  interface Window {
    YT?: YouTubeApi;
    onYouTubeIframeAPIReady?: () => void;
  }
}

let apiPromise: Promise<YouTubeApi> | null = null;

function loadYouTubeApi(): Promise<YouTubeApi> {
  if (apiPromise) return apiPromise;
  apiPromise = new Promise((resolve) => {
    if (window.YT?.Player) {
      resolve(window.YT);
      return;
    }
    const previous = window.onYouTubeIframeAPIReady;
    window.onYouTubeIframeAPIReady = () => {
      previous?.();
      resolve(window.YT as YouTubeApi);
    };
    const script = document.createElement("script");
    script.src = "https://www.youtube.com/iframe_api";
    document.head.appendChild(script);
  });
  return apiPromise;
}

function readSettings(): { enabled: boolean; volume: number } {
  try {
    const raw = window.localStorage.getItem(STORAGE_KEY);
    if (raw) {
      const parsed = JSON.parse(raw) as { enabled?: boolean; volume?: number };
      return { enabled: parsed.enabled ?? true, volume: parsed.volume ?? DEFAULT_VOLUME };
    }
  } catch {
    // localStorage không khả dụng — dùng mặc định
  }
  return { enabled: true, volume: DEFAULT_VOLUME };
}

export default function BackgroundMusic({ narrationPlaying }: { narrationPlaying: boolean }) {
  const mountRef = useRef<HTMLDivElement>(null);
  const playerRef = useRef<YouTubePlayer | null>(null);
  const [ready, setReady] = useState(false);
  const [enabled, setEnabled] = useState(true);
  const [volume, setVolume] = useState(DEFAULT_VOLUME);

  useEffect(() => {
    const saved = readSettings();
    setEnabled(saved.enabled);
    setVolume(saved.volume);
  }, []);

  useEffect(() => {
    let cancelled = false;
    let player: YouTubePlayer | null = null;

    loadYouTubeApi().then((YT) => {
      if (cancelled || !mountRef.current) return;
      const target = document.createElement("div");
      mountRef.current.appendChild(target);
      player = new YT.Player(target, {
        videoId: VIDEO_ID,
        playerVars: { loop: 1, playlist: VIDEO_ID, playsinline: 1, rel: 0 },
        events: {
          onReady: () => {
            if (cancelled) return;
            playerRef.current = player;
            setReady(true);
          },
        },
      });
    });

    return () => {
      cancelled = true;
      playerRef.current = null;
      player?.destroy();
    };
  }, []);

  useEffect(() => {
    const player = playerRef.current;
    if (!ready || !player) return;
    player.setVolume(volume);
    if (enabled && narrationPlaying) {
      player.playVideo();
    } else {
      player.pauseVideo();
    }
  }, [ready, enabled, narrationPlaying, volume]);

  const persist = (next: { enabled: boolean; volume: number }) => {
    try {
      window.localStorage.setItem(STORAGE_KEY, JSON.stringify(next));
    } catch {
      // bỏ qua
    }
  };

  return (
    <div className="mt-4 w-full max-w-xl rounded-lg border border-gray-200 bg-white p-4 shadow-sm">
      <div className="mb-3 flex flex-wrap items-center justify-between gap-2">
        <h3 className="text-sm font-semibold text-gray-800">♪ Nhạc nền</h3>
        <label className="flex cursor-pointer items-center gap-2 text-sm text-gray-600">
          <input
            type="checkbox"
            checked={enabled}
            onChange={(e) => {
              setEnabled(e.target.checked);
              persist({ enabled: e.target.checked, volume });
            }}
            className="accent-indigo-600"
          />
          Bật nhạc nền
        </label>
      </div>

      <div className="mb-3 flex items-center gap-3">
        <span className="text-sm text-gray-500">Âm lượng nhạc</span>
        <input
          type="range"
          min={0}
          max={60}
          value={volume}
          onChange={(e) => {
            const next = Number(e.target.value);
            setVolume(next);
            persist({ enabled, volume: next });
          }}
          className="flex-1 accent-indigo-600"
          aria-label="Âm lượng nhạc nền"
        />
        <span className="w-8 text-right text-sm text-gray-500">{volume}</span>
      </div>

      <div ref={mountRef} className="aspect-video w-full max-w-sm overflow-hidden rounded bg-gray-100 [&_iframe]:h-full [&_iframe]:w-full" />

      <p className="mt-2 text-xs text-gray-500">
        Nhạc nền: {MUSIC_TITLE} — kênh {MUSIC_CHANNEL}, phát qua YouTube. Nhạc tự chạy khi giọng đọc phát và dừng khi
        giọng đọc dừng.
      </p>
    </div>
  );
}
