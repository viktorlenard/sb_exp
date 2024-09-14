import { getSupabaseReqResClient } from "./app/supabase-utils/reqResClient";
import { NextResponse } from "next/server";

export async function middleware(request) {
  const res = NextResponse.next();
  const { supabase, response } = getSupabaseReqResClient({ request });
  
  const session = await supabase.auth.getSession()
  const requestedPath = request.nextUrl.pathname
  const sessionUser = session.data?.session?.user

  if (requestedPath.startsWith("/tickets")) {
    if (!sessionUser) {
      return NextResponse.redirect(new URL("/", request.url));
    }
  } else if (requestedPath === "/") {
    if (sessionUser) {
      return NextResponse.redirect(new URL("/tickets", request.url));
    }
  }
  return response.value;
}

export const config = {
  matcher: ["/((?!.*\\.).*)"],
};