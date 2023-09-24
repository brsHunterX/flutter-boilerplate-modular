import 'package:mobx/mobx.dart';

import 'package:appstore/domain/repositories/counter_repository.dart';

part 'counter_store.g.dart';

class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store {
  final CountRepository _repository;

  _CounterStoreBase(this._repository);

  @observable
  int count = 0;

  @action
  Future<void> increment() async {
    count++;
    await _repository.saveCount(count);
  }

  @action
  Future<void> getCount() async {
    count = await _repository.getCount();
  }

  @action
  void dispose() {}
}
