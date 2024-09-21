import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";

// buildUrl("/tickets", params.tenant, request)

export async function GET(request, { params }) {
    const { searchParams } = new URL(request.url);
    const hashed_token = searchParams.get("hashed_token");
    
    const isRecovery = searchParams.get("type") === "recovery";
    const isSignUp = searchParams.get("type") === "signup";

    const supabase = getSupabaseCookiesUtilClient();

    let verifyType = "magiclink";
    if (isRecovery) verifyType = "recovery";
    else if (isSignUp) verifyType = "signup";

    const { error } = await supabase.auth.verifyOtp({
        type: verifyType,
        token_hash: hashed_token,
    });

    if (error) {
        return NextResponse.redirect(
            buildUrl("/error?type=invalid_magiclink", params.tenant, request),
        );
        } else {
            if (isRecovery) {
                return NextResponse.redirect(buildUrl("/tickets/change-password", params.tenant, request),);
        } else {
            return NextResponse.redirect(buildUrl("/tickets", params.tenant, request));
        }
    }
}