// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postsAtom = Atom(name: '_PostViewModelBase.posts');

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

  final _$isServiceGetDataAtom =
      Atom(name: '_PostViewModelBase.isServiceGetData');

  @override
  bool get isServiceGetData {
    _$isServiceGetDataAtom.reportRead();
    return super.isServiceGetData;
  }

  @override
  set isServiceGetData(bool value) {
    _$isServiceGetDataAtom.reportWrite(value, super.isServiceGetData, () {
      super.isServiceGetData = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostViewModelBase.getAllPost');

  @override
  Future getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  dynamic requestStatus() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.requestStatus');
    try {
      return super.requestStatus();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
isServiceGetData: ${isServiceGetData}
    ''';
  }
}
