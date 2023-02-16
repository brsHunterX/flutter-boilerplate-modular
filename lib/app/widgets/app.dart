import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_boilerplate_modular_project/app/routes.dart';
import 'package:flutter_boilerplate_modular_project/shared/themes/custom_theme_dark.dart';
import 'package:flutter_boilerplate_modular_project/shared/themes/custom_theme_light.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget _buildMaterialApp(ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
    final bool isLocal = (
      dotenv.get('APP_ENV') == 'local' ||
      dotenv.get('APP_ENV') == 'staging' ||
      dotenv.get('APP_ENV') == 'homolog'
    );

    final ThemeData lightTheme = CustomThemeLight.theme.copyWith(
      colorScheme: lightDynamic ?? CustomThemeLight.theme.colorScheme
    );
    
    final ThemeData darkTheme = CustomThemeDark.theme.copyWith(
      colorScheme: darkDynamic ?? CustomThemeDark.theme.colorScheme
    );

    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      title: dotenv.get('APP_NAME'),
      debugShowCheckedModeBanner: isLocal,
      initialRoute: AppRoutes.APP_SPLASH,
      routes: {
        ...AppRoutes.routes,
      },
    );
  }

  Widget _buildDynamicColorsApp() {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        return _buildMaterialApp(lightDynamic, darkDynamic);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDynamicColorsApp();
  }
}