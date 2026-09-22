import { Injectable, NotFoundException } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from '../prisma/prisma.service.js';
import { FindStoriesDto } from './dto/find-stories.dto.js';
import { toStorySummary } from './story-summary.util.js';

@Injectable()
export class StoriesService {
  constructor(private readonly prisma: PrismaService) {}

  async findAll(query: FindStoriesDto) {
    const where: Prisma.StoryWhereInput = {};

    if (query.genre) {
      where.genres = { some: { genre: { slug: query.genre } } };
    }

    if (query.search) {
      where.title = { contains: query.search, mode: 'insensitive' };
    }

    const orderBy: Prisma.StoryOrderByWithRelationInput =
      query.sort === 'hot' ? { viewCount: 'desc' } : { createdAt: 'desc' };

    const stories = await this.prisma.story.findMany({
      where,
      orderBy,
      include: { genres: { include: { genre: true } } },
      take: 50,
    });

    return stories.map((story) => toStorySummary(story));
  }

  async findBySlug(slug: string) {
    const story = await this.prisma.story.findUnique({
      where: { slug },
      include: { genres: { include: { genre: true } } },
    });

    if (!story) {
      throw new NotFoundException('Không tìm thấy truyện');
    }

    return toStorySummary(story);
  }

  async findChapters(slug: string) {
    const story = await this.prisma.story.findUnique({ where: { slug } });
    if (!story) {
      throw new NotFoundException('Không tìm thấy truyện');
    }

    const chapters = await this.prisma.chapter.findMany({
      where: { storyId: story.id, status: 'ready' },
      orderBy: { chapterNumber: 'asc' },
      select: {
        id: true,
        chapterNumber: true,
        title: true,
        audioUrl: true,
        audioDurationSeconds: true,
      },
    });

    return chapters;
  }
}
