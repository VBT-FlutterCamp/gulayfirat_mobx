import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../core/base_view_model/base_view_model.dart';
import '../model/user_model.dart';
import '../service/user_sevice.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store, BaseViewModel {
  late IUserService userService;

  @observable
  List<UserModel>? userModel;
  @observable
  bool isLoading = true;

  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchStory() async {
    changeLoading();
    userModel = await userService.userFetch();
    changeLoading();
  }

  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    userService = UserService(networkManager);
    fetchStory();
  }
}
