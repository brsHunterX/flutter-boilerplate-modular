class PostCreateException implements Exception {
  final String message;

  const PostCreateException([this.message = 'Unable to create account.']);

  @override
  String toString() => "PostCreateException: $message";
}