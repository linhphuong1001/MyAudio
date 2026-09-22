import { NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";
import { toStorySummary } from "@/lib/story-summary";

export async function GET(_req: Request, { params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;

  const story = await prisma.story.findUnique({
    where: { slug },
    include: { genres: { include: { genre: true } } },
  });

  if (!story) {
    return NextResponse.json({ message: "Không tìm thấy truyện" }, { status: 404 });
  }

  return NextResponse.json(toStorySummary(story));
}
