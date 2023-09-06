import 'dart:math';

import 'package:dio/dio.dart';

class DioSerice{

  

  Future<dynamic> getMethod(String url) async{
    Dio dio=Dio();
    dio.options.headers["content-Type"]="application/json";

    return await dio.get(
      url,options: Options(
        responseType: ResponseType.json,method: "Get" 
      )).then((response) {
        
        

        return response;
        
      });
  }
}