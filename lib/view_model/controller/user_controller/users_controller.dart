import 'package:get/get.dart';
import 'package:mvvm_getx/data/response/status.dart';
import 'package:mvvm_getx/repository/user_repository/user_repository.dart';

class UsersController extends GetxController{

  final _api=UserRepository();


  final rxRequestStatus=Status.LOADING.obs;

  void userListApi(){
    _api.userListApi().then((value){



    }).onError((error, stackTrace){

    });
  }

}