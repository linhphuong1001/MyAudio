import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import { prisma } from "@/lib/prisma";
import { signToken } from "@/lib/auth-server";

const SALT_ROUNDS = 10;

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { email, password, displayName } = body as {
    email?: string;
    password?: string;
    displayName?: string;
  };

  if (!email || !password || password.length < 6 || !displayName) {
    return NextResponse.json({ message: "Thiếu hoặc sai thông tin đăng ký" }, { status: 400 });
  }

  const existing = await prisma.user.findUnique({ where: { email } });
  if (existing) {
    return NextResponse.json({ message: "Email đã được sử dụng" }, { status: 409 });
  }

  const passwordHash = await bcrypt.hash(password, SALT_ROUNDS);
  const user = await prisma.user.create({
    data: { email, passwordHash, displayName },
  });

  const accessToken = signToken({ sub: user.id, email: user.email, role: user.role });
  return NextResponse.json(
    {
      accessToken,
      user: { id: user.id, email: user.email, displayName: user.displayName, role: user.role },
    },
    { status: 201 },
  );
}
