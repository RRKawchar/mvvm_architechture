import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_model/controller/login_controller/login_view_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginViewModel = Get.put(LoginViewController());
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
                  TextFormField(
                    controller: loginViewModel.emailController.value,
                    focusNode: loginViewModel.emailFocusNode.value,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Email', "Enter Email");
                      }
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginViewModel.emailFocusNode.value,
                          loginViewModel.passwordFocusNode.value);
                    },
                    decoration: InputDecoration(hintText: "email_hint".tr),
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    controller: loginViewModel.passwordController.value,
                    focusNode: loginViewModel.passwordFocusNode.value,
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Password', "Enter Password");
                      }
                    },
                    onFieldSubmitted: (value) {
                    },
                    decoration: InputDecoration(hintText: "password_hint".tr),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Obx(() => RoundButton(
              width: 200,
              title: 'login'.tr,
              isLoading: loginViewModel.isLoading.value,
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  loginViewModel.loginApi();

                }
              },
            ))

          ],
        ),
      ),
    );
  }
}
