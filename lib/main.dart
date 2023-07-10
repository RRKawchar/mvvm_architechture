import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/localization/languages.dart';
import 'package:mvvm_getx/res/routes/routes.dart';
import 'package:mvvm_getx/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en','US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     getPages:AppRoutes.appRoute(),
    );
  }
}

