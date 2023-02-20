import 'package:fbm/modules/post/domain/entities/post.entity.dart';

abstract class PostRepository {
  Future<List<Post>> list();
  Future<void> store(Post entity);
  Future<void> remove(String id);
}