import 'package:flutter/material.dart';

import 'package:appstore/presentation/pages/product_list_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppStore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductListPage(),
      // initialRoute: AppRouter.splashRoute,
      // onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}