import { Prisma } from '@prisma/client';

export const storyWithGenres = Prisma.validator<Prisma.StoryDefaultArgs>()({
  include: { genres: { include: { genre: true } } },
});

export type StoryWithGenres = Prisma.StoryGetPayload<typeof storyWithGenres>;

export function toStorySummary(story: StoryWithGenres) {
  return {
    id: story.id,
    title: story.title,
    slug: story.slug,
    authorName: story.authorName,
    description: story.description,
    coverImageUrl: story.coverImageUrl,
    status: story.status,
    totalChapters: story.totalChapters,
    viewCount: story.viewCount,
    genres: story.genres.map((sg) => ({
      name: sg.genre.name,
      slug: sg.genre.slug,
    })),
  };
}
