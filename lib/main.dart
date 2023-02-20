import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/app/app.module.dart';
import 'package:fbm/app/presentation/widgets/app.widget.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(ModularApp(module: AppModule(), child: const App()));
}