import { NestFactory } from '@nestjs/core';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
import { AppModule } from './app.module';
import { Logger, ValidationPipe } from '@nestjs/common';
import * as swaggerStats from 'swagger-stats';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  const config = new DocumentBuilder()
    .setTitle('Products Service')
    .setDescription('Microservice to manage products')
    .setVersion('1.0')
    .build();

  const document = SwaggerModule.createDocument(app, config);

  app.use(swaggerStats.getMiddleware({ swaggerSpec: document }));

  app.useGlobalPipes(new ValidationPipe());

  SwaggerModule.setup('swagger-ui', app, document);

  const PORT = process.env.PORT ?? 80

  await app.listen(PORT).finally(() => {
    Logger.log(`Nest application listening on port: ${PORT}`, "main")
  });
}

bootstrap();
