'use client'
import Link from "next/link"
import { useEffect } from "react";
import { usePathname } from "next/navigation"
import { useRouter } from "next/navigation";
import { getSupabaseBrowserClient } from "../supabase-utils/browserClient"

export default function Nav() {

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
                router.push("/");
            }
        })
        return () => subscription.unsubscribe()
    }, [])
    
    return(
        <nav>
            <ul>
                <li>
                    <Link role='button' href='/tickets' {...(pathname === "/tickets" ? activeProps : inactiveProps )}>Ticket List</Link>
                </li>
                <li>
                    <Link role='button' href='/tickets/new' {...(pathname === "/tickets/new" ? activeProps : inactiveProps )}>Create new Ticket</Link>
                </li>
                <li>
                <Link role='button' href='/tickets/users' {...(pathname === "/tickets/users" ? activeProps : inactiveProps )}>User List</Link>
                </li>
            </ul>
            <ul>
                <li>
                    <Link role='button' href='/logout' prefetch={false} className="secondary"
                    onClick={(event) => {event.preventDefault(); supabase.auth.signOut()}}>Logout</Link>
                </li>
            </ul>
        </nav>
    )
}