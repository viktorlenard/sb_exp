'use client'

import Link from "next/link";
import { useRef, useEffect } from "react";
import { getSupabaseBrowserClient } from "../../supabase-utils/browserClient";
import { useRouter } from "next/navigation";
import { urlPath } from "@/utils/url-helpers";

export const Login = ({ isPasswordLogin, tenant, tenantName }) => {
  
    const emailInputRef = useRef(null)
    const passwordInputRef = useRef(null)
    const supabase = getSupabaseBrowserClient()
    const router = useRouter()
    // console.log(isPasswordLogin)
    
    useEffect(() => {
      const {
          data: { subscription },
      } = supabase.auth.onAuthStateChange((event, session) => {
          if (event === "SIGNED_IN") {
            if(session.user.app_metadata.tenants?.includes(tenant)){
              router.push(`/tickets`);
            } else {
              supabase.auth.signOut()
              alert("Could not sign in, tenant does not match.")
            }
          }
      })
      return () => subscription.unsubscribe()
    }, [])

    // urlPath("/auth/magic-link", tenant)
    
    return (
    <form action={isPasswordLogin ? urlPath("/auth/pw-login", tenant) : urlPath("/auth/magic-link", tenant)} method="POST" onSubmit={(event) => {isPasswordLogin && event.preventDefault(); 
    if(isPasswordLogin) {
        supabase.auth.signInWithPassword({
          email: emailInputRef.current.value, 
          password: passwordInputRef.current.value})
            .then((result) => {
              !result.data?.user && alert("Could not sign in");
              }) }}}>
      <article style={{ maxWidth: "480px", margin: "auto" }}>
        <header>Login
          <div style={{ display: "block", fontSize: "0.7em" }}>
            {tenantName}
          </div>
        </header>
        <fieldset>
            <label htmlFor="email">Email
                <input ref={emailInputRef} type="email" id="email" name="email" required/>
            </label>
          {isPasswordLogin && (
            <label htmlFor="password">Password
                <input ref={passwordInputRef} type="password" id="password" name="password"/>
            </label>
          )}
        </fieldset>
        <p>
          {isPasswordLogin ? (
          <Link style={{textAlign: 'center', display: 'block'}} href={{ pathname: urlPath("/", tenant), query: { magicLink: "yes" },}}>Go to Magic Link Login</Link>
          ) : (
            <Link style={{textAlign: 'center', display: 'block'}} href={{ pathname: urlPath("/", tenant), query: { magicLink: "no" },}}>Go to Password Login</Link>
          )}
        </p>
        <button type="submit">Sign in with {isPasswordLogin ? "Password" : "Magic Link"}</button>
        <Link href={urlPath("/register", tenant)} style={{
          textAlign: "center",
          display: "block",
          marginTop: "1em",
        }} >
          Create account
        </Link>
      </article>
    </form>
  );
};