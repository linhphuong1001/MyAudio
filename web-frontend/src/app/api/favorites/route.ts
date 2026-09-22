import { NextRequest, NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";
import { getUserFromRequest } from "@/lib/auth-server";
import { toStorySummary } from "@/lib/story-summary";

export async function GET(req: NextRequest) {
  const user = getUserFromRequest(req);
  if (!user) {
    return NextResponse.json({ message: "Unauthorized" }, { status: 401 });
  }

  const favorites = await prisma.favorite.findMany({
    where: { userId: user.sub },
    orderBy: { createdAt: "desc" },
    include: { story: { include: { genres: { include: { genre: true } } } } },
  });

  return NextResponse.json(favorites.map((favorite) => toStorySummary(favorite.story)));
}
