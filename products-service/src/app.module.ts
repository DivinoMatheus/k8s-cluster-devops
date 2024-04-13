import { Module } from '@nestjs/common';
import { ProductsController } from './presentation/products.controller';
import { DatabaseModule } from './infrastructure/database/database.module';
import { UseCaseProviders } from './domain/usecases/usecase.providers';
import { HealthController } from './presentation/health.controller';
import { TerminusModule } from '@nestjs/terminus';


@Module({
  imports: [TerminusModule, DatabaseModule],
  controllers: [ProductsController, HealthController],
  providers: [...UseCaseProviders],
})
export class AppModule {}
