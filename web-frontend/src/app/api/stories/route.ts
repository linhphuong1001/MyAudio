import { NextRequest, NextResponse } from "next/server";
import { getStories } from "@/lib/data";

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const stories = await getStories({
    genre: searchParams.get("genre") ?? undefined,
    search: searchParams.get("search") ?? undefined,
    sort: searchParams.get("sort") ?? undefined,
  });

  return NextResponse.json(stories);
}
