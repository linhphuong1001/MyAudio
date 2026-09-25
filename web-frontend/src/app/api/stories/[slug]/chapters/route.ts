import { NextResponse } from "next/server";
import { getReadyChapters } from "@/lib/data";

export async function GET(_req: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const chapters = await getReadyChapters(slug);

  if (!chapters) {
    return NextResponse.json({ message: "Không tìm thấy truyện" }, { status: 404 });
  }

  return NextResponse.json(chapters);
}
