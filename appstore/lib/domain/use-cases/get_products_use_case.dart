// lib/domain/usecases/get_products_usecase.dart

import 'package:appstore/domain/entities/product_entity.dart';
import 'package:appstore/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductRepository _repository;

  GetProductsUseCase(this._repository);

  Future<List<Product>> execute() async {
    return await _repository.getProducts();
  }
}
