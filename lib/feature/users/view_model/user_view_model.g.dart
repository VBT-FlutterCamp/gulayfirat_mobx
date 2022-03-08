// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$userModelAtom = Atom(name: '_UserViewModelBase.userModel');

  @override
  List<UserModel>? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(List<UserModel>? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_UserViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$fetchStoryAsyncAction = AsyncAction('_UserViewModelBase.fetchStory');

  @override
  Future<void> fetchStory() {
    return _$fetchStoryAsyncAction.run(() => super.fetchStory());
  }

  @override
  String toString() {
    return '''
userModel: ${userModel},
isLoading: ${isLoading}
    ''';
  }
}
