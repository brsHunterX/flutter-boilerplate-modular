import 'package:mobx/mobx.dart';

import 'package:appstore/domain/entities/product_entity.dart';
import 'package:appstore/domain/use-cases/get_products_use_case.dart';

part 'product_store.g.dart';

class ProductStore = _ProductStoreBase with _$ProductStore;

abstract class _ProductStoreBase with Store {
  final GetProductsUseCase _getProductsUseCase;
  // final GetProductDetailsUseCase _getProductDetailsUseCase;

  _ProductStoreBase(
    this._getProductsUseCase,
    // this._getProductDetailsUseCase,
  );

  @observable
  ObservableFuture<List<Product>>? future;

  // @observable
  // ObservableFuture<Product>? productDetailsFuture;

  @computed
  List<Product>? get products => future?.value;

  // @computed
  // Product? get productDetails => productDetailsFuture?.value;

  @action
  Future<void> fetchProducts() async {
    future = ObservableFuture(_getProductsUseCase.execute());
  }

  // @action
  // Future<void> fetchProductDetails(int productId) async {
  //   productDetailsFuture = ObservableFuture(_getProductDetailsUseCase.execute(productId));
  // }

  @action
  void dispose() {}
}
