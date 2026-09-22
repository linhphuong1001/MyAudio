import { NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";

export async function GET() {
  const genres = await prisma.genre.findMany({
    orderBy: { name: "asc" },
    include: { _count: { select: { stories: true } } },
  });

  return NextResponse.json(
    genres.map((genre) => ({
      id: genre.id,
      name: genre.name,
      slug: genre.slug,
      storyCount: genre._count.stories,
    })),
  );
}
