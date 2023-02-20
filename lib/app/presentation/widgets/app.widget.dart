import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/shared/themes/dark.theme.dart';
import 'package:fbm/shared/themes/light.theme.dart';

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

    return MaterialApp.router(
      title: dotenv.get('APP_NAME'),
      debugShowCheckedModeBanner: isLocal,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      theme: lightTheme,
      darkTheme: darkTheme,
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