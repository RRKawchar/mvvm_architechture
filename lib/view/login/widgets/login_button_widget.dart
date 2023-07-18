import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/view_model/controller/login_controller/login_view_controller.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
   LoginButtonWidget({Key? key,required this.formKey}) : super(key: key);



  final loginController = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
      width: 200,
      title: 'login'.tr,
      isLoading: loginController.isLoading.value,
      onPressed: () {
        if (formKey.currentState!.validate()) {
          loginController.loginApi();
        }
      },
    ));
  }
}
