import 'dart:math';

import 'package:dio/dio.dart';

class DioSerice{

  Dio dio=Dio();

  Future<dynamic> getMethod(String url) async{


    return await dio.get(
      url,options: Options(
        responseType: ResponseType.json,method: "Get" 
      )).then((response) {
        
        print(response.toString());

        return response;
        
      });
  }
}