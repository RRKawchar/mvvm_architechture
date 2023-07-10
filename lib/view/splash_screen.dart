import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/data/app_exceptions.dart';
import 'package:mvvm_getx/res/assets/image_assets.dart';
import 'package:mvvm_getx/res/components/general_exception_widget.dart';
import 'package:mvvm_getx/res/components/internet_exception_widget.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/res/fonts/app_fonts.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService=SplashService();


  @override
  void initState() {
    splashService.isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("welcome_back".tr,textAlign: TextAlign.center,)),
    );

  }
}
