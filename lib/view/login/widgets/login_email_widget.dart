import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_model/controller/login_controller/login_view_controller.dart';

class LoginEmailWidget extends StatelessWidget {
   LoginEmailWidget({Key? key}) : super(key: key);

  final loginController = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginController.emailController.value,
      focusNode: loginController.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Email', "Enter Email");
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(
            context,
            loginController.emailFocusNode.value,
            loginController.passwordFocusNode.value);
      },
      decoration: InputDecoration(

        hintText: "email_hint".tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
