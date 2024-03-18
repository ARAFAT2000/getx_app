import 'package:getx_app/data/network/network_api_services.dart';
import 'package:getx_app/res/app_url/app_url.dart';

class LogInRepository{
  final networkapiservices = NetworkApiServices();

  Future<dynamic> LogInServices(var data)async{

    //direct appUrl theke login api call krchi
 dynamic response= await networkapiservices.postApi(data, AppUrl.login_url);
 return response;
  }
}