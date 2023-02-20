import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/modules/post/data/data-sources/post.data_source.dart';
import 'package:fbm/modules/post/data/repositories/post.repository.dart';
import 'package:fbm/modules/post/presentation/controllers/post.controller.dart';

import 'package:fbm/modules/post/presentation/views/post_list.view.dart';
import 'package:fbm/modules/post/presentation/views/post_create.view.dart';

class PostModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.factory((i) => PostDataSource()),
    Bind.factory((i) => PostImplRepository(i())),
    Bind.singleton((i) => PostController(i())),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const PostListView()),
    ChildRoute('/create/', child: (context, args) => const PostCreateView()),
  ];
}