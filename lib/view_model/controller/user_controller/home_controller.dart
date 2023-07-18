import 'package:get/get.dart';
import 'package:mvvm_getx/data/response/status.dart';
import 'package:mvvm_getx/models/user_list_model/user_list_model.dart';
import 'package:mvvm_getx/repository/user_repository/user_repository.dart';

class HomeController extends GetxController {
  final _api = UserRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  final error=''.obs;


  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value=_value;


  void userListApi() {

    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value) {

      setRxRequestStatus(Status.COMPLETED);

      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);

    });
  }
}
