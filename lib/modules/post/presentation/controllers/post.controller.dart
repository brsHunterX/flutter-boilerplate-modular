
import 'package:mobx/mobx.dart';

import 'package:fbm/modules/post/domain/entities/post.entity.dart';
import 'package:fbm/modules/post/data/repositories/post.repository.dart';

part 'post.controller.g.dart';

class PostController = _PostControllerBase with _$PostController;

abstract class _PostControllerBase with Store {

  final PostImplRepository _repository;

  _PostControllerBase(this._repository);

  @observable
  bool inLoading = false;

  @observable
  List<Post> posts = [];

  @action
  Future<void> list() async {
    inLoading = true;
    posts = await _repository.list();
    inLoading = false;
  }
  
  @action
  Future<void> store(Post entity) async {
    inLoading = true;
    await _repository.store(entity);
    posts = await _repository.list();
    inLoading = false;
  }
  
  @action
  Future<void> remove(String id) async {
    inLoading = true;
    await _repository.remove(id);
    posts = await _repository.list();
    inLoading = false;
  }
}