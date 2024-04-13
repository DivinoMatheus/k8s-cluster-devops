import { Module } from '@nestjs/common';
import { ProductsController } from './presentation/products.controller';
import { DatabaseModule } from './infrastructure/database/database.module';
import { UseCaseProviders } from './domain/usecases/usecase.providers';
import { HealthController } from './presentation/health.controller';
import { TerminusModule } from '@nestjs/terminus';
import { PrometheusModule } from '@willsoto/nestjs-prometheus';

@Module({
  imports: [TerminusModule, DatabaseModule, PrometheusModule.register()],
  controllers: [ProductsController, HealthController],
  providers: [...UseCaseProviders],
})
export class AppModule {}
