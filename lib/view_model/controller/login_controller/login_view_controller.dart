import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/models/user_model/user_model.dart';
import 'package:mvvm_getx/repository/login_repository/login_repository.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_model/controller/user_preferences/user_preferences_view_controller.dart';

class LoginViewController extends GetxController {
  final _api = LoginRepository();
  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool isLoading = false.obs;

  void loginApi() {
    isLoading.value = true;
    Map data = {
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      isLoading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar('Login', value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);

        userPreference.saveUser(userModel).then((value) {
          Get.delete<LoginViewController>();
          Get.toNamed(RoutesName.homeScreen)!.then((value) {});
          Utils.snackBar('Login', "Successfully Login");
        }).onError((error, stackTrace) {});
      }
    }).onError((error, stackTrace) {
      isLoading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
