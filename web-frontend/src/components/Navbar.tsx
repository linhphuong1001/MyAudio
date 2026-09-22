"use client";

import Link from "next/link";
import { useState } from "react";
import { useAuth } from "@/lib/auth-context";

export default function Navbar() {
  const { user, logout } = useAuth();
  const [search, setSearch] = useState("");

  return (
    <header className="border-b border-gray-200 bg-white">
      <div className="mx-auto flex max-w-5xl flex-wrap items-center gap-4 px-4 py-3">
        <Link href="/" className="text-lg font-bold text-indigo-600">
          TruyệnAudio
        </Link>

        <form
          action="/tim-kiem"
          className="flex flex-1 min-w-[160px] items-center gap-2"
        >
          <input
            name="q"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Tìm truyện..."
            className="w-full rounded border border-gray-300 px-3 py-1.5 text-sm"
          />
        </form>

        <nav className="flex items-center gap-4 text-sm">
          {user ? (
            <>
              <Link href="/yeu-thich" className="text-gray-700 hover:text-indigo-600">
                Yêu thích
              </Link>
              <span className="text-gray-500">{user.displayName}</span>
              <button onClick={logout} className="text-gray-500 hover:text-red-600">
                Đăng xuất
              </button>
            </>
          ) : (
            <>
              <Link href="/dang-nhap" className="text-gray-700 hover:text-indigo-600">
                Đăng nhập
              </Link>
              <Link href="/dang-ky" className="text-gray-700 hover:text-indigo-600">
                Đăng ký
              </Link>
            </>
          )}
        </nav>
      </div>
    </header>
  );
}
