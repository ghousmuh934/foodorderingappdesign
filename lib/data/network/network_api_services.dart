

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mvvm_getx/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import '../app_exceptions.dart';

class NetworkApiServices extends BaseApiServices{

  @override
  Future<dynamic> getApi(String url) async{

    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException();
    }on RequestTimeOut{
      throw RequestTimeOut();
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async{
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try{
      final response = await http.post(Uri.parse(url),
        body: data //if data is in raw then don't need jsonencode if data is in form  then use encoder jsonEncode(data)
      ).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    }on SocketException{
      throw InternetException('');
    }on RequestTimeOut{
      throw RequestTimeOut('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }


  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = json.decode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
        // throw InvalidUrlException();
      default:
        throw FetchDataException('Error occurred while fetching data from server ${response.statusCode}');
    }
  }



}

