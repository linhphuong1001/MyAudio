import { Controller, Delete, Get, Param, Post, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/jwt-auth.guard.js';
import { CurrentUser } from '../auth/current-user.decorator.js';
import type { CurrentUserPayload } from '../auth/current-user.decorator.js';
import { FavoritesService } from './favorites.service.js';

@Controller('favorites')
@UseGuards(JwtAuthGuard)
export class FavoritesController {
  constructor(private readonly favoritesService: FavoritesService) {}

  @Get()
  findAll(@CurrentUser() user: CurrentUserPayload) {
    return this.favoritesService.findAllForUser(user.userId);
  }

  @Post(':storyId')
  add(@CurrentUser() user: CurrentUserPayload, @Param('storyId') storyId: string) {
    return this.favoritesService.add(user.userId, storyId);
  }

  @Delete(':storyId')
  remove(@CurrentUser() user: CurrentUserPayload, @Param('storyId') storyId: string) {
    return this.favoritesService.remove(user.userId, storyId);
  }
}
