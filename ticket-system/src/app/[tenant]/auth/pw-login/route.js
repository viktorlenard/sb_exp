import { NextResponse } from "next/server";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { buildUrl } from "@/utils/url-helpers";

// buildUrl("/tickets", params.tenant, request)

export async function POST( request, { params } ) {

    const formData = await request.formData();
    const email = formData.get("email");
    const password = formData.get("password");

    const supabase = getSupabaseCookiesUtilClient();

    const { data, error } = await supabase.auth.signInWithPassword({ email, password, });

    const userData = data?.user;
    if (error || !userData || !userData.app_metadata?.tenant.includes(params.tenant)) {
        await supabase.auth.signOut();
        return NextResponse.redirect( buildUrl("/error?type=login-failed", params.tenant, request),
    { status: 302 });
    }
    return NextResponse.redirect(buildUrl("/tickets", params.tenant, request), 
    { status: 302 });
}