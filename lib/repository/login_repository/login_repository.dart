import 'package:mvvm_getx/data/network/network_api_services.dart';
import 'package:mvvm_getx/res/app_url/app_url.dart';

class LoginRepository{


  final _apiServices=NetworkApiService();


  Future<dynamic> loginApi(var data)async{

    dynamic response= await _apiServices.postApi(data, AppUrl.loginApi);

    return response;

  }
}