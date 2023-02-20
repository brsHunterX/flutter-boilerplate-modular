import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fbm/shared/data-sources/local.data_source.dart';

class PostDataSource extends LocalDataSource {
  PostDataSource(): super('posts');

  Future<List> _load() async  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? map = prefs.getString(key);
    
    if (map == null) {
      return [];
    }

    return json.decode(map);
  }
  
  Future<void> _persist(List data) async  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    
    await prefs.setString(key, json.encode(data));
  }

  @override
  Future<List> all() async {
    return await _load();
  }

  @override
  Future<void> store(Map<String, dynamic> map) async {
    final List data = await _load();

    data.add(map);

    await _persist(data);
  }

  @override
  Future<void> remove(String pk, { String? pkKey = "id" }) async {
    final List data = await _load();

    data.removeWhere((element) => element[pkKey] == pk);

    await _persist(data);
  }
}