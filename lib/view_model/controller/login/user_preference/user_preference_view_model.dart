import 'package:getx_app/models/login_token/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

//UserPreference ar instance ar maddhome Login_in_view a chole jabe token collect krte
class UserPreference{

  //user jkhn log in krbe,,tkhn tar data akhne store kra hoilo
  //User logInResponseModel  a data patabe,,
  //then seta Token a store hbe
  //then,,,,,GetUser a nikot giye check krbe,,,,


Future<bool>SaveUser(UserModel logInResponseModel) async{

  final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('Token', logInResponseModel.token.toString());
  prefs.setBool('isLogin', logInResponseModel.isLogin!);
  return true;
}

//user data return krbe ,,so,,,,,
  Future<UserModel> GetUser() async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
   String?token= prefs.getString('Token');
    bool? isLogin= prefs.getBool('isLogin');

    return UserModel(
      token: token,
        isLogin: isLogin
    );
  }

  //user remove krle
  Future<bool> RemoveUser() async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }

}