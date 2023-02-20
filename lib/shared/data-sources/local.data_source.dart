abstract class LocalDataSource {
  String key;

  LocalDataSource(this.key);

  Future<List> all();
  Future<void> store(Map<String, dynamic> map);
  Future<void> remove(String pk, { String? pkKey = "id" });
}