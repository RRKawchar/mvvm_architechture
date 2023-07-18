import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view/login/widgets/login_button_widget.dart';
import 'package:mvvm_getx/view/login/widgets/login_email_widget.dart';
import 'package:mvvm_getx/view/login/widgets/login_password_widget.dart';
import 'package:mvvm_getx/view_model/controller/login_controller/login_view_controller.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  final loginController = Get.put(LoginViewController());

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("login".tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  LoginEmailWidget(),
                  const SizedBox(height: 20),
                  LoginPasswordWidget(),
                ],
              ),
            ),
            const SizedBox(height: 40),
             LoginButtonWidget(formKey: _formkey)
          ],
        ),
      ),
    );
  }
}
