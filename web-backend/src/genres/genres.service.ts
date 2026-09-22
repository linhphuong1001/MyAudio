import { Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service.js';

@Injectable()
export class GenresService {
  constructor(private readonly prisma: PrismaService) {}

  async findAll() {
    const genres = await this.prisma.genre.findMany({
      orderBy: { name: 'asc' },
      include: { _count: { select: { stories: true } } },
    });

    return genres.map((genre) => ({
      id: genre.id,
      name: genre.name,
      slug: genre.slug,
      storyCount: genre._count.stories,
    }));
  }
}
