import 'package:get/get.dart';
import 'package:getx_app/res/routes/routes_name.dart';
import 'package:getx_app/views/home/home_view.dart';
import 'package:getx_app/views/splass_screen_view.dart';

import '../../views/login_screen_view.dart';

class Approutes{

  static approutes()=>
      [
        GetPage(name:RoutesName.splassScreen , page: ()=>SplassScreen(),
            transitionDuration:Duration(milliseconds: 250) ,
         transition: Transition.leftToRightWithFade
        ),

        GetPage(name:RoutesName.loginview , page: ()=>LogInScreenView(),
            transitionDuration:Duration(milliseconds: 250) ,
            transition: Transition.leftToRightWithFade
        ),
        GetPage(name:RoutesName.homeView , page: ()=>HomeView(),
            transitionDuration:Duration(milliseconds: 250) ,
            transition: Transition.leftToRightWithFade
        ),

      ];
}