import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/modules/post/post.module.dart';
import 'package:fbm/app/presentation/view/splash.page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const SplashPage()),
    ModuleRoute('/posts/', module: PostModule())
  ];
}