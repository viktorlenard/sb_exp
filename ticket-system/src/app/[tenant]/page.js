'use client'

import Image from "next/image";
import { getSupabaseBrowserClient } from "../../supabase-utils/browserClient";
import { useEffect } from "react";

import { Login } from "./Login";

export default function LoginPage({searchParams, params}) {
  const wantsMagicLink = searchParams.magicLink === "yes"
  // console.log(wantsMagicLink)
  return(
    <Login tenant={params.tenant} isPasswordLogin={!wantsMagicLink} />
  ) 
}
