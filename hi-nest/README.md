## Insomnia

Rest 클라이언트.
Insomnia API 설계 플랫폼과의 협업 및 표준을 통해 고품질 API를 제공합니다.

- https://insomnia.rest
- https://github.com/Kong/insomnia

Insomnia 다운로드

- https://insomnia.rest/download

## Controller

컨트롤러 생성

```bash
nest g co controller-name
```

### constructor

constructor 메서드는 클래스의 인스턴스 객체를 생성하고 초기화하는 특별한 메서드입니다.
또한 constructor를 사용하면 다른 모든 메서드 호출보다 앞선 시점인,
인스턴스 객체를 초기화할 때 수행할 초기화 코드를 정의할 수 있습니다.

https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Classes/constructor

## Service

서비스 생성

```bash
nest g s service-name
```

### Built-in HTTP exceptions

Nest는 기본 HttpException에서 상속되는 일련의 표준 예외를 제공합니다. 이들은 @nestjs/common 패키지에서 노출되며 가장 일반적인 HTTP 예외를 나타냅니다.

https://docs.nestjs.com/exception-filters#built-in-http-exceptions

## Param decorators

Nest 는 HTTP 라우트 핸들러와 함께 사용할 수 있는 유용한 매개변수 데코레이터 세트를 제공합니다.
다음은 제공된 데코레이터와 이들이 나타내는 일반 Express(또는 Fastify) 객체의 목록과 사용 예시입니다.

### @Param

Param은 Path Variable을 받아올 때 사용합니다. (예, /users/123)

```ts
// NestJS
@Param(param?: string)

// ExpressJS
req.params / req.params[param]
```

```ts
import { Controller, Get, Param } from '@nestjs/common';

@Controller('movies')
export class MoviesController {
  @Get('/:id')
  getOne(@Param('id') movieId: string) {
    return `This will return one movie with the id: ${movieId}`;
  }
}
```

### @Body

Body는 JSON 형식으로 받아올 때 사용합니다.

```ts
// NestJS
@Body(param?: string)

// ExpressJS
req.body / req.body[param]
```

```ts
import { Body, Controller, Param, Patch, Post } from '@nestjs/common';

@Controller('movies')
export class MoviesController {
  @Post()
  create(@Body() movieData) {
    return movieData;
  }

  @Patch('/:id')
  update(@Param('id') movieId: string, @Body() updateData) {
    return {
      updateData: movieId,
      ...updateData,
    };
  }
}
```

### @Query

Query는 Query Parameter를 받아올 때 사용합니다. (예, /users?id=123)

```ts
// NestJS
@Query(param?: string)

// ExpressJS
req.query / req.query[param]
```

```ts
import { Controller, Get, Query } from '@nestjs/common';

@Controller('movies')
export class MoviesController {
  @Get('search')
  search(@Query('year') year: string) {
    return `We are searching for a movie made after: ${year}`;
  }
}
```

https://docs.nestjs.com/custom-decorators#param-decorators
