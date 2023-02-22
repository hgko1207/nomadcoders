/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  async redirects() {
    return [
      {
        source: '/contact',
        destination: '/form',
        permanent: false,
      },
    ];
  },
  async rewrites() {
    return [{
      
    }];
  },
};

module.exports = nextConfig;
