import { NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";

export async function GET(_req: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;

  const story = await prisma.story.findUnique({ where: { slug } });
  if (!story) {
    return NextResponse.json({ message: "Không tìm thấy truyện" }, { status: 404 });
  }

  const chapters = await prisma.chapter.findMany({
    where: { storyId: story.id, status: "ready" },
    orderBy: { chapterNumber: "asc" },
    select: {
      id: true,
      chapterNumber: true,
      title: true,
      audioUrl: true,
      audioDurationSeconds: true,
    },
  });

  return NextResponse.json(chapters);
}
