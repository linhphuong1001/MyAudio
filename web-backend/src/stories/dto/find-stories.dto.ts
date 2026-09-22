import { IsIn, IsOptional, IsString } from 'class-validator';

export class FindStoriesDto {
  @IsOptional()
  @IsString()
  genre?: string;

  @IsOptional()
  @IsString()
  search?: string;

  @IsOptional()
  @IsIn(['new', 'hot'])
  sort?: 'new' | 'hot';
}
