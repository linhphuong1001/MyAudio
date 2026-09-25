import { NextResponse } from "next/server";
import { getGenres } from "@/lib/data";

export async function GET() {
  return NextResponse.json(await getGenres());
}
