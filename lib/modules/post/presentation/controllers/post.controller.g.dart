// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostController on _PostControllerBase, Store {
  late final _$inLoadingAtom =
      Atom(name: '_PostControllerBase.inLoading', context: context);

  @override
  bool get inLoading {
    _$inLoadingAtom.reportRead();
    return super.inLoading;
  }

  @override
  set inLoading(bool value) {
    _$inLoadingAtom.reportWrite(value, super.inLoading, () {
      super.inLoading = value;
    });
  }

  late final _$postsAtom =
      Atom(name: '_PostControllerBase.posts', context: context);

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  late final _$listAsyncAction =
      AsyncAction('_PostControllerBase.list', context: context);

  @override
  Future<void> list() {
    return _$listAsyncAction.run(() => super.list());
  }

  late final _$storeAsyncAction =
      AsyncAction('_PostControllerBase.store', context: context);

  @override
  Future<void> store(Post entity) {
    return _$storeAsyncAction.run(() => super.store(entity));
  }

  late final _$removeAsyncAction =
      AsyncAction('_PostControllerBase.remove', context: context);

  @override
  Future<void> remove(String id) {
    return _$removeAsyncAction.run(() => super.remove(id));
  }

  @override
  String toString() {
    return '''
inLoading: ${inLoading},
posts: ${posts}
    ''';
  }
}
