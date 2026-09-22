import { NextRequest, NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";
import { getUserFromRequest } from "@/lib/auth-server";

export async function POST(req: NextRequest, { params }: { params: Promise<{ storyId: string }> }) {
  const user = getUserFromRequest(req);
  if (!user) {
    return NextResponse.json({ message: "Unauthorized" }, { status: 401 });
  }
  const { storyId } = await params;

  const story = await prisma.story.findUnique({ where: { id: storyId } });
  if (!story) {
    return NextResponse.json({ message: "Không tìm thấy truyện" }, { status: 404 });
  }

  const existing = await prisma.favorite.findUnique({
    where: { userId_storyId: { userId: user.sub, storyId } },
  });
  if (existing) {
    return NextResponse.json({ message: "Truyện đã có trong danh sách yêu thích" }, { status: 409 });
  }

  await prisma.favorite.create({ data: { userId: user.sub, storyId } });
  return NextResponse.json({ success: true });
}

export async function DELETE(req: NextRequest, { params }: { params: Promise<{ storyId: string }> }) {
  const user = getUserFromRequest(req);
  if (!user) {
    return NextResponse.json({ message: "Unauthorized" }, { status: 401 });
  }
  const { storyId } = await params;

  await prisma.favorite.deleteMany({ where: { userId: user.sub, storyId } });
  return NextResponse.json({ success: true });
}
