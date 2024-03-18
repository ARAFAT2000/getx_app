import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_app/models/login_token/user_model.dart';
import 'package:getx_app/repository/login_repository/log_in_repository.dart';
import 'package:getx_app/res/routes/routes_name.dart';
import 'package:getx_app/utils/utils.dart';
import 'package:getx_app/view_model/controller/login/user_preference/user_preference_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewController extends GetxController{
//logInRepository teee ja hochhe,,seta call krlam

  UserPreference userPreference=UserPreference();
  final _api= LogInRepository();
  final emailController= TextEditingController().obs;
  final passwordController= TextEditingController().obs;

  final emailFocusedNode= FocusNode().obs;
  final passwordFocusedNode= FocusNode().obs;

  RxBool loading= false.obs;
  void logInApi(){
    loading.value=true;
    Map data={
      'email': emailController.value.text,
      'password': passwordController.value.text,

    };
    _api.LogInServices(data).then((value) {
      loading.value=false;
      if(value['error']=='user not found'){
        Utils.snacBarMessege('Log In', value['error']);
      }else{
        //userPreference intance ar maddhomde UserModel Model a json systeam a value add hoy
        //token pelei HomeView a chole jabe
       // token user model asbe then,saveUser a store hbe
        UserModel userModel =UserModel(
            isLogin: true,
            token:value['token']

        );
        userPreference.SaveUser(userModel).then((value) {
        Get.toNamed(RoutesName.homeView);
        }).onError((error, stackTrace) {

        });
        Utils.snacBarMessege('Log In', 'Succesfully log in ');
      }

    }).onError((error, stackTrace) {
      print(error.toString());
      loading.value=false;
      Utils.snacBarMessege('Error', error.toString());
    });
  }

}