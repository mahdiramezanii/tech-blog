import 'package:flutter_application_2/constant/api_constant.dart';

class Articles{

  String? id;
  String? title;
  String? image;
  String? cat_id;
  String? author;
  String? view;
  String? status;

  Articles(
    {
      this.id,
      this.title,
      this.image,
      this.cat_id,
      this.author,
      this.view,
      this.status
    }
  );

  Articles.fromJson(Map<String,dynamic> element){

      id=element["id"];
      title=element["title"];
      image=ApiUrlConstant.hostUrl+element["image"];
      cat_id=element["cat_id"];
      author=element["author"];
      view=element["view"];
      status=element["status"];

  }



}
