import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/shared/widgets/logo.widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3))
      .then((value) => Modular.to.navigate('/posts/'));
    
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Logo(size: 80.0),
      ),
    );
  }
}
