abstract class Client {
  String baseUrl;
  Map<String, dynamic>? headers = {};

  Client(this.baseUrl, { this.headers });

  Future<dynamic> get(String path);
  Future<dynamic> post(String path, { Map<String, dynamic>? body });
}