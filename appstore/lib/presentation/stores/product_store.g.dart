// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStoreBase, Store {
  Computed<List<Product>?>? _$productsComputed;

  @override
  List<Product>? get products =>
      (_$productsComputed ??= Computed<List<Product>?>(() => super.products,
              name: '_ProductStoreBase.products'))
          .value;

  late final _$futureAtom =
      Atom(name: '_ProductStoreBase.future', context: context);

  @override
  ObservableFuture<List<Product>>? get future {
    _$futureAtom.reportRead();
    return super.future;
  }

  @override
  set future(ObservableFuture<List<Product>>? value) {
    _$futureAtom.reportWrite(value, super.future, () {
      super.future = value;
    });
  }

  late final _$fetchProductsAsyncAction =
      AsyncAction('_ProductStoreBase.fetchProducts', context: context);

  @override
  Future<void> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  late final _$_ProductStoreBaseActionController =
      ActionController(name: '_ProductStoreBase', context: context);

  @override
  void dispose() {
    final _$actionInfo = _$_ProductStoreBaseActionController.startAction(
        name: '_ProductStoreBase.dispose');
    try {
      return super.dispose();
    } finally {
      _$_ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
future: ${future},
products: ${products}
    ''';
  }
}
