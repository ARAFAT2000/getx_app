import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_app/res/routes/routes_name.dart';
import 'package:getx_app/view_model/controller/login/user_preference/user_preference_view_model.dart';

class SplassServices{

  UserPreference userPreference =UserPreference();

  void isLogIn(){
      userPreference.GetUser().then((value) {
       print(value.token);
         if(value.isLogin == false || value.isLogin == null){
           Timer(Duration(seconds: 3), () =>
               Get.toNamed(RoutesName.loginview)
           );
         }else{
           Timer(Duration(seconds: 3), () =>
               Get.off(RoutesName.homeView)
           );
         }
      }).onError((error, stackTrace) {

      });


  }
}