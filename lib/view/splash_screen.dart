import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/data/app_exceptions.dart';
import 'package:mvvm_getx/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("email_hint".tr),
      ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         Utils.toastMessageCenter('Hello! I am Riyazur Rohman Kawchar!!');
         Utils.toastMessage('Hey! I am Riyazur Rohman Kawchar!!');
       },
     ),
    );
  }
}
