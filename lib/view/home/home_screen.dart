import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/data/response/status.dart';
import 'package:mvvm_getx/res/components/general_exception_widget.dart';
import 'package:mvvm_getx/res/components/internet_exception_widget.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view/home/widgets/user_list_widget.dart';
import 'package:mvvm_getx/view_model/controller/user_controller/home_controller.dart';
import 'package:mvvm_getx/view_model/controller/user_preferences/user_preferences_view_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());

  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeController.userListApi();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Obx(() {
        switch (homeController.rxRequestStatus.value) {
          case Status.LOADING:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.ERROR:
            if(homeController.error.value=="No Internet"){
              return InternetExceptionWidget(onPressed: (){
                homeController.userListApi();
              });
            }else{
              return GeneralExceptionWidget(onPressed: (){
                homeController.userListApi();
              });
            }
          case Status.COMPLETED:
            return UserListWidget();
        }
      }),
    );
  }
}
