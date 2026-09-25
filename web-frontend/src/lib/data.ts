import { Prisma } from "@prisma/client";
import { prisma } from "./prisma";
import { toStorySummary } from "./story-summary";

export async function getGenres() {
  const genres = await prisma.genre.findMany({
    orderBy: { name: "asc" },
    include: { _count: { select: { stories: true } } },
  });

  return genres.map((genre) => ({
    id: genre.id,
    name: genre.name,
    slug: genre.slug,
    storyCount: genre._count.stories,
  }));
}

export async function getStories(params: { genre?: string; search?: string; sort?: string } = {}) {
  const where: Prisma.StoryWhereInput = {};
  if (params.genre) {
    where.genres = { some: { genre: { slug: params.genre } } };
  }
  if (params.search) {
    where.title = { contains: params.search, mode: "insensitive" };
  }

  const orderBy: Prisma.StoryOrderByWithRelationInput =
    params.sort === "hot" ? { viewCount: "desc" } : { createdAt: "desc" };

  const stories = await prisma.story.findMany({
    where,
    orderBy,
    include: { genres: { include: { genre: true } } },
    take: 50,
  });

  return stories.map(toStorySummary);
}

export async function getStory(slug: string) {
  const story = await prisma.story.findUnique({
    where: { slug },
    include: { genres: { include: { genre: true } } },
  });

  return story ? toStorySummary(story) : null;
}

export async function getReadyChapters(slug: string) {
  const story = await prisma.story.findUnique({ where: { slug } });
  if (!story) return null;

  return prisma.chapter.findMany({
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
}
