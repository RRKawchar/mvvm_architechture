import 'dart:async';

import 'package:get/get.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view_model/controller/user_preferences/user_preferences_view_controller.dart';

class SplashService{

  UserPreference userPreference=UserPreference();



 void isLogin(){

   userPreference.getUser().then((value){

     print(value.token);
     print(value.isLogin);

    if(value.isLogin ==false || value.isLogin.toString() =='null'){
      Timer(const Duration(seconds: 3), () {
        Get.toNamed(RoutesName.loginScreen);
      });
    }else{
      Timer(const Duration(seconds: 3), () {
        Get.toNamed(RoutesName.homeScreen);
      });
    }

   });



 }

}