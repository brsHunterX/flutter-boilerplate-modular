import 'package:flutter/material.dart';
import 'package:appstore/presentation/routers/app_router.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRouter.productListRoute);
    });

    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: FlutterLogo(size: 200),
        ),
      ),
    );
  }
}
