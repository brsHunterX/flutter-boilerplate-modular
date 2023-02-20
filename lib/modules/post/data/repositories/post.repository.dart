
import 'package:fbm/shared/data-sources/local.data_source.dart';

import 'package:fbm/modules/post/domain/entities/post.entity.dart';
import 'package:fbm/modules/post/data/dtos/post_create.dto.dart';
import 'package:fbm/modules/post/domain/repositories/post.repository.dart';
import 'package:fbm/modules/post/data/mappers/post.mapper.dart';

class PostImplRepository extends PostRepository {
  
  final LocalDataSource _datasource;

  PostImplRepository(this._datasource);
  
  @override
  Future<List<Post>> list() async {
    final List response = await _datasource.all();

    return response
      .map((post) => PostMapper.fromMap(post).toEntity())
      .toList();
  }

  @override
  Future<void> store(Post entity) async {
    await _datasource.store(PostCreateDTO.fromEntity(entity).toMap());
  }
  
  @override
  Future<void> remove(String id) async {
    await _datasource.remove(id);
  }
}