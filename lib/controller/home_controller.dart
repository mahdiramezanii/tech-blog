import 'package:flutter_application_2/constant/api_constant.dart';
import 'package:flutter_application_2/models/article_models.dart';
import 'package:flutter_application_2/services/services.dart';
import 'package:get/get.dart';

class HomeScreanController extends GetxController{

  RxList posterModel=RxList();
  RxList<Articles> articleList=RxList();




  getHomeItems()async{

    var response =await DioSerice().getMethod(ApiUrlConstant.get_home_items);


      if (response.statusCode==200){

        response.data["top_visited"].forEach((element){

            articleList.add(Articles.fromJson(element));

            
        });
      }

      print(articleList);
  }

}