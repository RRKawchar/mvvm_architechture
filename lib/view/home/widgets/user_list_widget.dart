import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/view_model/controller/user_controller/home_controller.dart';

class UserListWidget extends StatelessWidget {
   UserListWidget({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: homeController.userList.value.data!.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  homeController.userList.value.data![index].avatar
                      .toString(),
                ),
              ),
              title: Text(
                homeController.userList.value.data![index].firstName
                    .toString(),
              ),
              subtitle: Text(
                homeController.userList.value.data![index].email
                    .toString(),
              ),
            ),
          );
        });
  }
}
