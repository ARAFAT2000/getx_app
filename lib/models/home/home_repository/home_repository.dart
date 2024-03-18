import 'package:getx_app/data/network/network_api_services.dart';
import 'package:getx_app/models/home/user_list_model.dart';
import 'package:getx_app/res/app_url/app_url.dart';

class HomeRepository{
  
  final networkapiservices = NetworkApiServices();

  Future<UserListModel> userlist()async{

    //direct appUrl theke login api call krchi
    dynamic response= await networkapiservices.getApi(AppUrl.user_url);
    return UserListModel.fromJson(response);
  }
}