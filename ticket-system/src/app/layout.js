import { Inter } from "next/font/google";
import "./globals.css";

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "Supabase Test",
  description: "Major mess.",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <head>
        <link rel='stylesheet' href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css"/>
      </head>
      <body className={inter.className}>
        <main className="container">{children}</main>
      </body>
    </html>
  );
}
