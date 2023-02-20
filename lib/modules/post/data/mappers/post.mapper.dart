
import 'package:fbm/modules/post/domain/entities/post.entity.dart';

class PostMapper {
  String id;
  String title;
  String body;
  // int userId;

  PostMapper({
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostMapper.fromMap(Map<String, dynamic> data) => PostMapper(
    id: data["id"],
    title: data["title"],
    body: data["body"],
  );

  Post toEntity() => Post(
    id: id,
    title: title,
    body: body,
  );
}