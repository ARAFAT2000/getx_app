import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_app/res/colors/colors.dart';

class Utils{
  static void fieldFocusChange(BuildContext context ,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static tostBottmMessege(String messege){
    Fluttertoast.showToast(msg: messege,
        backgroundColor:AppColors.blackColor,
      gravity: ToastGravity.BOTTOM
    );
  }
  static tostCenterMessege(String messege){
    Fluttertoast.showToast(msg: messege,
        backgroundColor:AppColors.blackColor,
        gravity: ToastGravity.CENTER
    );
  }

  static snacBarMessege(String title,String messege){
    Get.snackbar(title, messege,
        backgroundColor:AppColors.blackColor );
  }
}