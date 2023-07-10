
import 'package:mvvm_getx/models/user_model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class UserPreference{


  Future<bool> saveUser(UserModel userModel)async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.setString('token', userModel.token.toString());
    sp.setBool('isLogin', userModel.isLogin!);
    return true;
  }


  Future<UserModel> getUser()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    String? token=sp.getString('token');
    bool? isLogin=sp.getBool('isLogin');

    return UserModel(
      token: token,
      isLogin: isLogin,
    );
  }


  Future<bool> remove()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.clear();


    return true;

  }
}