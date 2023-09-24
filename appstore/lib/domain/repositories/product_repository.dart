import 'package:appstore/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product> getProductDetails(int productId);
}
