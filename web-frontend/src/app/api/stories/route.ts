import { NextRequest, NextResponse } from "next/server";
import { Prisma } from "@prisma/client";
import { prisma } from "@/lib/prisma";
import { toStorySummary } from "@/lib/story-summary";

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const genre = searchParams.get("genre") ?? undefined;
  const search = searchParams.get("search") ?? undefined;
  const sort = searchParams.get("sort") ?? undefined;

  const where: Prisma.StoryWhereInput = {};
  if (genre) {
    where.genres = { some: { genre: { slug: genre } } };
  }
  if (search) {
    where.title = { contains: search, mode: "insensitive" };
  }

  const orderBy: Prisma.StoryOrderByWithRelationInput =
    sort === "hot" ? { viewCount: "desc" } : { createdAt: "desc" };

  const stories = await prisma.story.findMany({
    where,
    orderBy,
    include: { genres: { include: { genre: true } } },
    take: 50,
  });

  return NextResponse.json(stories.map(toStorySummary));
}
