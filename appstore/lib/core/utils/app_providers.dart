import 'package:appstore/core/utils/app_locator.dart';
import 'package:appstore/core/utils/app_http_client.dart';

import 'package:appstore/domain/repositories/counter_repository.dart';
import 'package:appstore/domain/repositories/product_repository.dart';
import 'package:appstore/domain/use-cases/get_products_use_case.dart';

import 'package:appstore/data/repositories/counter_repository_impl.dart';
import 'package:appstore/data/repositories/product_repository_impl.dart';

class AppProviders {
  static void setup() {
    // UTILS
    AppLocator.registerSingleton<AppHttpClient>(AppHttpClient());
    
    // REPOSITORIES
    AppLocator.registerLazySingleton<CountRepository>(
      () => CountRepositoryImpl()
    );

    AppLocator.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(AppLocator.get<AppHttpClient>())
    );

    // USE CASES
    AppLocator.registerLazySingleton<GetProductsUseCase>(
      () => GetProductsUseCase(AppLocator.get<ProductRepository>())
    );
  }
}
