
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;
import 'package:getx_app/data/network/base_api_services.dart';

import '../app-exception.dart';


//(kDebugMode)==This code checks if the app is running in debug mode (kDebugMode evaluates to true).

class NetworkApiServices extends BaseApiServices{



  //getApi
  @override
  Future<dynamic>getApi(String url)async{

    if (kDebugMode) {
      print(url);
    }
    dynamic jsonResponse;
    try{
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonResponse =returnResponse(response);
    }on SocketException{
      throw InternetException();
    } on RequestTimeout{
      throw RequestTimeout();
    }
    if (kDebugMode) {
      print(jsonResponse);
    }
      return jsonResponse;
  }

  //postApi

  @override
  Future<dynamic>postApi(var data,String url)async{
    if (kDebugMode) {
      print(url);
    }
    dynamic jsonResponse;
    try{
      final response = await http.post(Uri.parse(url),
      body: data
      ).timeout(Duration(seconds: 10));
      jsonResponse =returnResponse(response);
    }on SocketException{
      throw InternetException();
    } on RequestTimeout{
      throw RequestTimeout();
    }
    return jsonResponse;
  }



  dynamic returnResponse(http.Response response){
  switch(response.statusCode){
    case 200:
      dynamic jsonResponse= jsonDecode(response.body);
      return jsonResponse;
    case 400:
      dynamic jsonResponse= jsonDecode(response.body);
      return jsonResponse;
    default:
      throw FetchdataException('Error has been accoured '+response.statusCode.toString());

  }
  }
}