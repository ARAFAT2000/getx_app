import 'package:get/get.dart';
import 'package:getx_app/data/response/status.dart';
import 'package:getx_app/models/home/home_repository/home_repository.dart';
import 'package:getx_app/models/home/user_list_model.dart';
import 'package:getx_app/models/login_token/user_model.dart';

class HomeControll extends GetxController{

  final api=HomeRepository();

  final rxRequestStatus= Status.Loading.obs;
  final userlist= UserListModel().obs;


  void setrxRequestStatus(Status _value)=> rxRequestStatus.value=_value;
  void setUserList(UserListModel _value)=> userlist.value=_value;


void userListApi(){

  api.userlist().then((value) {
   setrxRequestStatus(Status.Complete);
   setUserList(value);
  }).onError((error, stackTrace) {

    setrxRequestStatus(Status.Waiting);
  });
}


  
}