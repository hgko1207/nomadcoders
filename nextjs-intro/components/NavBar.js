import Link from 'next/link';
import { useRouter } from 'next/router';

export default function NavBar() {
  const router = useRouter();

  return (
    <nav>
      <Link href="/">
        <span className={router.pathname === '/' ? 'active' : ''}>Home</span>
      </Link>
      <Link href="/about">
        <span className={router.pathname === '/about' ? 'active' : ''}>About Us</span>
      </Link>
      <style jsx>{`
        nav {
          background-color: tomato;
        }
        a {
          text-decoration: none;
        }
        .active {
          color: yellow;
        }
      `}</style>
    </nav>
  );
}
