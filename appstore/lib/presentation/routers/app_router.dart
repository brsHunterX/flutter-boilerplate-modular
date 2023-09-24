import 'package:appstore/presentation/pages/product_list_page.dart';
import 'package:flutter/material.dart';

import 'package:appstore/presentation/pages/home_page.dart';
import 'package:appstore/presentation/pages/splash_page.dart';
import 'package:appstore/presentation/pages/not_found_page.dart';

class AppRouter {
  static const String splashRoute = '/';
  static const String productListRoute = '/products/list';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashPage(),
        );
      case productListRoute:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProductListPage(),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const NotFoundPage(),
        );
    }
  }
}
