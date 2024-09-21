import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { NextResponse } from "next/server";
import { buildUrl } from "@/utils/url-helpers";
import { sendOTPLink } from "@/utils/sendOTPLink";

export async function POST(request, { params }) {
    
  const formData = await request.formData();
  const name = formData.get("name");
  const email = formData.get("email");
  const password = formData.get("password");
  const tenant = params.tenant;

  const isNonEmptyString = (value) => typeof value === "string" && value.trim().length > 0;
  const emailRegex = /^\S+@\S+$/; // simple front@back regex
  if (
    !isNonEmptyString(name) ||
    !isNonEmptyString(email) ||
    !emailRegex.test(email) ||
    !isNonEmptyString(password)
  ) {
    return NextResponse.redirect(
      buildUrl("/error", tenant, request),
      302
    );
  }

  const [ , emailHost] = email.split('@');

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants")
    .select("*")
    .eq("id", tenant)
    .eq("domain", emailHost)
    .single();

  const safeEmailString = encodeURIComponent(email);
  if (error) {
    return NextResponse.redirect(
      buildUrl(`/error?type=register_mail_mismatch&email=${safeEmailString}`, tenant, request,),302);
  } 
  const { data: userData, error: userError } = await supabaseAdmin.auth.admin.createUser({
    email,
    password,
    app_metadata: {
      tenants: [tenant],
    },
  });

  if (userError) {
    const userExists =
       userError.message.includes("already been registered");
    if (userExists) {
      return NextResponse.redirect(
        buildUrl(
         `/error?type=register_mail_exists&email=${safeEmailString}`,
         tenant,
         request,
        ),
        302,
      );
    } else {
      return NextResponse.redirect(
        buildUrl("/error?type=register_unknown", tenant, request),
        302,
      );
    }
  }
  
  // Add to Service User table.
  const { data: serviceUser } = await supabaseAdmin
    .from("service_users")
    .insert({
      full_name: name,
      supabase_user: userData.user.id,
    })
    .select()
    .single();
  
  // Insert data to Tenant Permissions.
  const {error: tpError} = await supabaseAdmin.from("tenant_permissions").insert({
    tenant,
    service_user: serviceUser?.id,
  });
  
  // Delete the user if we got an error on the previous step. 
  if (tpError) {
    await supabaseAdmin.auth.admin.deleteUser(userData.user.id);
    return NextResponse.redirect(
      buildUrl("/error", tenant, request), 302
    );
  }

  await sendOTPLink(email, 'signup', tenant, request)

  return Response.redirect(buildUrl(`/registration-success?email=${safeEmailString}`, tenant, request ), 302);
}