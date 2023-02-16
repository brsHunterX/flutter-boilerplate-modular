import 'package:flutter/material.dart';

import 'package:flutter_boilerplate_modular_project/app/pages/splash_page.dart';

class AppRoutes {
  static const APP_SPLASH = '/';

  static final routes = {
    APP_SPLASH: (BuildContext context) => const SplashPage(),
  };
}