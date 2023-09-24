// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CounterStore on _CounterStoreBase, Store {
  late final _$countAtom =
      Atom(name: '_CounterStoreBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$incrementAsyncAction =
      AsyncAction('_CounterStoreBase.increment', context: context);

  @override
  Future<void> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  late final _$getCountAsyncAction =
      AsyncAction('_CounterStoreBase.getCount', context: context);

  @override
  Future<void> getCount() {
    return _$getCountAsyncAction.run(() => super.getCount());
  }

  late final _$_CounterStoreBaseActionController =
      ActionController(name: '_CounterStoreBase', context: context);

  @override
  void dispose() {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.dispose');
    try {
      return super.dispose();
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
