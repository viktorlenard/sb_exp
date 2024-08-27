'use client';
import classes from "./TicketDetails.module.css";
import { useRef } from "react";

const comments = [
  {
    author: "Dave",
    date: "2027-01-01",
    content: "This is a comment from Dave",
  },
  {
    author: "Alice",
    date: "2027-01-02",
    content: "This is a comment from Alice",
  },
];
export function TicketComments() {
  const commentRef = useRef(null);
  return (
    <footer>
        <h4>Comments</h4>
        <textarea placeholder="Add a comment"></textarea>
        <button>Add comment</button>
        <section>
            {comments.map((comment) => (
            <article className={classes.comment} key={comment.date}>
                <strong>{comment.author} </strong>
                <time>{comment.date}</time>
                <p>{comment.content}</p>
            </article>
            ))}
        </section>
    </footer>
  );
}