import 'package:flutter_application_2/constant/api_constant.dart';
import 'package:flutter_application_2/services/services.dart';
import 'package:get/get.dart';

class HomeScreanController extends GetxController{

  RxList posterModel=RxList();



  getHomeItems()async{

    var response =await DioSerice().getMethod(ApiUrlConstant.get_home_items);


      print(response.data["poster"]);
  }

}