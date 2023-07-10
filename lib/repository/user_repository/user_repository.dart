import 'package:mvvm_getx/data/network/network_api_services.dart';
import 'package:mvvm_getx/models/user_list_model/user_list_model.dart';
import 'package:mvvm_getx/res/app_url/app_url.dart';

class UserRepository{


  final _apiServices=NetworkApiService();


  Future<UserListModel> userListApi()async{

    dynamic response=await _apiServices.getApi(AppUrl.userListApi);

    return UserListModel.fromJson(response);

  }
}