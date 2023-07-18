import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_model/controller/login_controller/login_view_controller.dart';

class LoginPasswordWidget extends StatelessWidget {
   LoginPasswordWidget({Key? key}) : super(key: key);


  final loginController = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginController.passwordController.value,
      focusNode: loginController.passwordFocusNode.value,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Password', "Enter Password");
        }
      },
      onFieldSubmitted: (value) {},
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: "password_hint".tr,
      ),
    );
  }
}
