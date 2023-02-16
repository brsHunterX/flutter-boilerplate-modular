import 'package:flutter/material.dart';

import 'package:flutter_boilerplate_modular_project/app/widgets/logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Logo(size: 80.0),
      ),
    );
  }
}
