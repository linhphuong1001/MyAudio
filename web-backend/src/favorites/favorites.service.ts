import { ConflictException, Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service.js';
import { toStorySummary } from '../stories/story-summary.util.js';

@Injectable()
export class FavoritesService {
  constructor(private readonly prisma: PrismaService) {}

  async findAllForUser(userId: string) {
    const favorites = await this.prisma.favorite.findMany({
      where: { userId },
      orderBy: { createdAt: 'desc' },
      include: { story: { include: { genres: { include: { genre: true } } } } },
    });

    return favorites.map((favorite) => toStorySummary(favorite.story));
  }

  async add(userId: string, storyId: string) {
    const story = await this.prisma.story.findUnique({ where: { id: storyId } });
    if (!story) {
      throw new NotFoundException('Không tìm thấy truyện');
    }

    const existing = await this.prisma.favorite.findUnique({
      where: { userId_storyId: { userId, storyId } },
    });
    if (existing) {
      throw new ConflictException('Truyện đã có trong danh sách yêu thích');
    }

    await this.prisma.favorite.create({ data: { userId, storyId } });
    return { success: true };
  }

  async remove(userId: string, storyId: string) {
    await this.prisma.favorite.deleteMany({ where: { userId, storyId } });
    return { success: true };
  }
}
