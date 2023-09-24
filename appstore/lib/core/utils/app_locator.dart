import 'package:get_it/get_it.dart';

class AppLocator {
  static final GetIt _instance = GetIt.instance;

  static T get<T extends Object>() => _instance.get<T>();

  static void registerSingleton<T extends Object>(T instance) {
    _instance.registerSingleton<T>(instance);
  }

  static void registerLazySingleton<T extends Object>(FactoryFunc<T> factoryFunc) {
    _instance.registerLazySingleton<T>(factoryFunc);
  }

  static void unregister<T extends Object>() {
    _instance.unregister<T>();
  }
}
