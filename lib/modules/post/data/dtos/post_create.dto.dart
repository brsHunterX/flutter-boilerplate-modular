import 'package:fbm/modules/post/domain/entities/post.entity.dart';

class PostCreateDTO {
  String id;
  String title;
  String body;

  PostCreateDTO({
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostCreateDTO.fromEntity(Post entity) => PostCreateDTO(
    id: entity.id,
    title: entity.title,
    body: entity.body,
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'body': body,
  };
}