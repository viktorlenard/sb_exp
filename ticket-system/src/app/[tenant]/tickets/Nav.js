'use client'

import Link from "next/link"
import { useEffect } from "react";
import { usePathname } from "next/navigation"
import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "../../../supabase-utils/browserClient"
import { urlPath } from "@/utils/url-helpers";

export default function Nav( { tenant } ) {

    const supabase = getSupabaseBrowserClient()
    const pathname = usePathname()
    const router = useRouter()
    const activeProps = { className: 'contrast' }
    const inactiveProps = { className: "secondary outline" }

    useEffect(() => {
        const {
            data: { subscription },
        } = supabase.auth.onAuthStateChange((event, session) => {
            if (event === "SIGNED_OUT") {
                router.push(`/${tenant}`);
            }
        })
        return () => subscription.unsubscribe()
    }, [])
    
    urlPath("/tickets/users", tenant)

    return(
        <nav>
            <ul>
                <li>
                    <Link role='button' href={urlPath("/tickets", tenant)} {...(pathname === urlPath("/tickets", tenant) ? activeProps : inactiveProps )}>Ticket List</Link>
                </li>
                <li>
                    <Link role='button' href={urlPath("/tickets/new", tenant)} {...(pathname === urlPath("/tickets/new", tenant) ? activeProps : inactiveProps )}>Create new Ticket</Link>
                </li>
                <li>
                <Link role='button' href={urlPath("/tickets/users", tenant)} {...(pathname === urlPath("/tickets/users", tenant) ? activeProps : inactiveProps )}>User List</Link>
                </li>
            </ul>
            <ul>
                <li>
                    <Link role='button' href={urlPath("/logout", tenant)} prefetch={false} className="secondary"
                    onClick={(event) => {event.preventDefault(); supabase.auth.signOut()}}>Logout</Link>
                </li>
            </ul>
        </nav>
    )
}