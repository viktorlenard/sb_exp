import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/app/supabase-utils/cookiesUtilClient"; 

export async function POST( request ) {

    const formData = await request.formData();
    const email = formData.get("email");
    const supabase = getSupabaseCookiesUtilClient();

    const { data, error } = await supabase.auth.signInWithOtp({ 
        email, 
        options: { shouldCreateUser: false }, 
    });
    if (error) {
        return NextResponse.redirect( new URL("/error?type=magiclink", request.url),
    { status: 302 });
    }
    const thanksUrl = new URL("/magic-thanks", request.url);
    return NextResponse.redirect(thanksUrl, 302);
}