import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view_model/controller/user_preferences/user_preferences_view_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPreference userPreference = UserPreference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                userPreference.remove().then((value) {
                  Get.toNamed(RoutesName.loginScreen);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
