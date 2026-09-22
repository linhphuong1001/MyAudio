function getBaseUrl(): string {
  if (typeof window !== "undefined") return ""; // trình duyệt: URL tương đối là đủ
  if (process.env.VERCEL_URL) return `https://${process.env.VERCEL_URL}`;
  return `http://localhost:${process.env.PORT ?? 3000}`;
}

export interface Genre {
  id: string;
  name: string;
  slug: string;
  storyCount: number;
}

export interface StorySummary {
  id: string;
  title: string;
  slug: string;
  authorName: string;
  description: string | null;
  coverImageUrl: string | null;
  status: "ongoing" | "completed";
  totalChapters: number;
  viewCount: number;
  genres: { name: string; slug: string }[];
}

export interface Chapter {
  id: string;
  chapterNumber: number;
  title: string;
  audioUrl: string | null;
  audioDurationSeconds: number | null;
}

async function apiFetch<T>(path: string, options: RequestInit = {}): Promise<T> {
  const res = await fetch(`${getBaseUrl()}/api${path}`, {
    ...options,
    headers: {
      "Content-Type": "application/json",
      ...options.headers,
    },
  });

  if (!res.ok) {
    const body = await res.json().catch(() => ({}));
    throw new Error(body.message ?? `Request failed with status ${res.status}`);
  }

  return res.json() as Promise<T>;
}

export function fetchGenres() {
  return apiFetch<Genre[]>("/genres");
}

export function fetchStories(params: { genre?: string; search?: string; sort?: "new" | "hot" } = {}) {
  const query = new URLSearchParams();
  if (params.genre) query.set("genre", params.genre);
  if (params.search) query.set("search", params.search);
  if (params.sort) query.set("sort", params.sort);
  const qs = query.toString();
  return apiFetch<StorySummary[]>(`/stories${qs ? `?${qs}` : ""}`);
}

export function fetchStory(slug: string) {
  return apiFetch<StorySummary>(`/stories/${slug}`);
}

export function fetchChapters(slug: string) {
  return apiFetch<Chapter[]>(`/stories/${slug}/chapters`);
}

export function registerUser(data: { email: string; password: string; displayName: string }) {
  return apiFetch<{ accessToken: string; user: { id: string; email: string; displayName: string } }>(
    "/auth/register",
    { method: "POST", body: JSON.stringify(data) },
  );
}

export function loginUser(data: { email: string; password: string }) {
  return apiFetch<{ accessToken: string; user: { id: string; email: string; displayName: string } }>(
    "/auth/login",
    { method: "POST", body: JSON.stringify(data) },
  );
}

export function fetchFavorites(token: string) {
  return apiFetch<StorySummary[]>("/favorites", {
    headers: { Authorization: `Bearer ${token}` },
  });
}

export function addFavorite(token: string, storyId: string) {
  return apiFetch<{ success: boolean }>(`/favorites/${storyId}`, {
    method: "POST",
    headers: { Authorization: `Bearer ${token}` },
  });
}

export function removeFavorite(token: string, storyId: string) {
  return apiFetch<{ success: boolean }>(`/favorites/${storyId}`, {
    method: "DELETE",
    headers: { Authorization: `Bearer ${token}` },
  });
}
