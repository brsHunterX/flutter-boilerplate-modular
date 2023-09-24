import 'package:appstore/core/utils/app_http_client.dart';
import 'package:appstore/domain/entities/product_entity.dart';
import 'package:appstore/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final AppHttpClient _client;

  ProductRepositoryImpl(this._client);

  @override
  Future<List<Product>> getProducts() async {
    final dynamic response = await _client.get('https://dummyjson.com/products');

    return Product.fromList(response['products']);
  }
  
  @override
  Future<Product> getProductDetails(int productId) {
    // TODO: implement getProductDetails
    throw UnimplementedError();
  }

  // @override
  // Future<Product> getProductDetails(int productId) {
  //   return _provider.getProductDetails(productId);
  // }
}
