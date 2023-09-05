

class Padcast{

  String? id;
  String? title;
  String? poster;
  String? cat_name;
  String? author;
  String? view;
  String? status;



  Padcast({
    required this.id,
    required this.title,
    required this.poster,
    required this.cat_name,
    required this.author,
    required this.view,
    required this.status

  });

  Padcast.fromJson(Map<String,dynamic> element){

    id=element["id"];
    title=element["title"];
    poster=element["poster"];
    cat_name=element["cat_name"];
    author=element["auther"];
    view=element["view"];
    status=element["status"];

  }




}


