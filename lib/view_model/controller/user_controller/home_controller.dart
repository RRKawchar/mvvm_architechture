import 'package:get/get.dart';
import 'package:mvvm_getx/data/response/status.dart';
import 'package:mvvm_getx/models/user_list_model/user_list_model.dart';
import 'package:mvvm_getx/repository/user_repository/user_repository.dart';

class HomeController extends GetxController {
  final _api = UserRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;

  void userListApi() {
    _api.userListApi().then((value) {

      setRxRequestStatus(Status.COMPLETED);

      setUserList(value);
    }).onError((error, stackTrace) {
      print("Error $error");
      print("stackTrace $stackTrace");
      setRxRequestStatus(Status.ERROR);

    });
  }
}
