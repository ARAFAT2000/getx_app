import 'package:getx_app/data/response/status.dart';
//his declares a generic class named ApiResponse with a type parameter T
//This means that you can create instances of ApiResponse that hold data of any type.

class ApiResponse<T> {
  Status ? status;
  T ? data;
  String ? messege;
  ApiResponse(this.status,this.data,this.messege);

  ApiResponse.loading(): status= Status.Loading;
  ApiResponse.complete(): status= Status.Complete;
  ApiResponse.waiting(): status= Status.Waiting;

  @override
  String toString(){
    return 'Status :$status \n Messege : $messege \n Data :$data ';
  }
}