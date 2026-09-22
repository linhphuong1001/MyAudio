import { NextRequest, NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import { prisma } from "@/lib/prisma";
import { signToken } from "@/lib/auth-server";

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { email, password } = body as { email?: string; password?: string };

  if (!email || !password) {
    return NextResponse.json({ message: "Thiếu email hoặc mật khẩu" }, { status: 400 });
  }

  const user = await prisma.user.findUnique({ where: { email } });
  if (!user || !(await bcrypt.compare(password, user.passwordHash))) {
    return NextResponse.json({ message: "Email hoặc mật khẩu không đúng" }, { status: 401 });
  }

  const accessToken = signToken({ sub: user.id, email: user.email, role: user.role });
  return NextResponse.json({
    accessToken,
    user: { id: user.id, email: user.email, displayName: user.displayName, role: user.role },
  });
}
