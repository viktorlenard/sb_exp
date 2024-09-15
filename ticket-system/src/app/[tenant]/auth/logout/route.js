import { getSupabaseCookiesUtilClient } from "@/app/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";

export async function GET(request) {
  const supabase = getSupabaseCookiesUtilClient();
  await supabase.auth.signOut();
  return NextResponse.redirect(new URL("/", request.url));
}