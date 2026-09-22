import { Controller, Get, Param, Query } from '@nestjs/common';
import { StoriesService } from './stories.service.js';
import { FindStoriesDto } from './dto/find-stories.dto.js';

@Controller('stories')
export class StoriesController {
  constructor(private readonly storiesService: StoriesService) {}

  @Get()
  findAll(@Query() query: FindStoriesDto) {
    return this.storiesService.findAll(query);
  }

  @Get(':slug')
  findOne(@Param('slug') slug: string) {
    return this.storiesService.findBySlug(slug);
  }

  @Get(':slug/chapters')
  findChapters(@Param('slug') slug: string) {
    return this.storiesService.findChapters(slug);
  }
}
