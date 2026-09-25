import { NextResponse } from "next/server";
import { getStory } from "@/lib/data";

export async function GET(_req: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const story = await getStory(slug);

  if (!story) {
    return NextResponse.json({ message: "Không tìm thấy truyện" }, { status: 404 });
  }

  return NextResponse.json(story);
}
