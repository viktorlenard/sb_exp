import { getSupabaseAdminClient } from "@/supabase-utils/adminClient";
import { Login } from "./Login";
import { notFound } from "next/navigation";

export default async function LoginPage({searchParams, params}) {
  
  const wantsMagicLink = searchParams.magicLink === "yes"

  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin
    .from("tenants").select("*").eq("id", params.tenant).single();
  
  if(error){
    notFound();
  }

  const { name: tenantName } = data;

  return(
    <Login tenantName={tenantName} tenant={params.tenant} isPasswordLogin={!wantsMagicLink} />
  ) 
}
