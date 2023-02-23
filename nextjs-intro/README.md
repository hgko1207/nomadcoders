# NextJS Introduction

```shell
D:\project\Study\nomadcoders>npx create-next-app@latest
√ What is your project named? ... nextjs-intro
√ Would you like to use TypeScript with this project? ... No / Yes
√ Would you like to use ESLint with this project? ... No / Yes
√ Would you like to use `src/` directory with this project? ... No / Yes
√ Would you like to use experimental `app/` directory with this project? ... No / Yes
√ What import alias would you like configured? ... @/*
Creating a new Next.js app in D:\project\Study\nomadcoders\nextjs-intro.

Using npm.

Installing dependencies:
- react
- react-dom
- next
- @next/font
- eslint
- eslint-config-next


added 264 packages, and audited 265 packages in 25s

102 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

Initializing project with template: default

Success! Created nextjs-intro at D:\project\Study\nomadcoders\nextjs-intro
```

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Server Side Rendering(SSR)

- https://nextjs.org/docs/basic-features/data-fetching/get-server-side-props
- https://chaeyoung2.tistory.com/53
- https://ahnanne.tistory.com/75#1.%20Static-site%20Generation%20(SSG)

언제 getServerSideProps를 사용해야 하나요?
request time에 반드시 데이터를 fetch해와야 하는 페이지를 pre-render해야 하는 경우에만 getServerSideProps를 사용해야 합니다.
데이터를 pre-render할 필요가 없다면 client side에서 데이터를 가져오는 것을 고려해야 합니다.
