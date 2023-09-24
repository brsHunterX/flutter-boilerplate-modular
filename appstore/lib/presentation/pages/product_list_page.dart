import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:appstore/core/utils/app_locator.dart';
import 'package:appstore/domain/use-cases/get_products_use_case.dart';
import 'package:appstore/presentation/stores/product_store.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final ProductStore _store = ProductStore(
    AppLocator.get<GetProductsUseCase>()
  );

  @override
  void initState() {
    super.initState();
    _store.fetchProducts();
  }

  @override
  void dispose() {
    _store.dispose();
    super.dispose();
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Products'),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: _store.products!.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_store.products![index].title),
          trailing: Text(_store.products![index].price.toStringAsFixed(2)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Observer(
        builder: (_) {
          print(_store.future?.status);
          if (_store.future?.status == FutureStatus.pending) {
            return const Center(child: CircularProgressIndicator());
          }
                
          if (_store.future?.status == FutureStatus.rejected) {
            return const Center(child: Text('Failed to load products'));
          }
          
          if (_store.products == null || _store.products!.isEmpty) {
            return const Center(child: Text('No products available'));
          }
          
          return _buildListView();
        },
      ),
    );
  }
}
