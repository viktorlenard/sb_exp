'use server'

import classes from "./TicketDetails.module.css";
import { getSupabaseCookiesUtilClient } from "@/supabase-utils/cookiesUtilClient";
import { notFound } from "next/navigation";
import { TICKET_STATUS } from "@/utils/constants";
import { TicketDetails } from "./TicketDetails";

import { TicketComments } from "./TicketComments";

export default async function TicketDetailsPage({ params }) {
  
  const supabase = getSupabaseCookiesUtilClient()
  const id = Number(params.id)
  const { data: ticket, error } = await supabase
  .from('tickets')
  .select('*')
  .eq('id', id)
  .single()

  if (error) return notFound();

  // Figure out if the user is the author of the ticket.
  const supabase_user_id =
    (await supabase.auth.getUser()).data.user.id;
  const { data: serviceUser } =
    await supabase
      .from("service_users")
      .select("id")
      .eq("supabase_user", supabase_user_id)
      .single();
  // True is logged in user is the author.  
  const isAuthor = serviceUser.id === ticket.created_by;

  const {created_at, title, description, created_by, status, author_name} = ticket
  console.log(ticket)
  
  const dateString = new Date(created_at).toLocaleString("en-UK");
  return (
    <TicketDetails
      id={id}
      tenant={ticket.tenant}
      title={title}
      description={description}
      status={status}
      author_name={author_name}
      dateString={dateString}
      isAuthor={isAuthor}
    />
    );
  }