class TopVisited{

  String? id;
  String? title;
  String? image;
  String? cat_id;
  String? author;
  String? view;
  String? status;


  TopVisited(
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

  TopVisited.fromJson(Map<String,dynamic> element){

      id=element["id"];
      title=element["title"];
      image=element["image"];
      cat_id=element["cat_id"];
      author=element["author"];
      view=element["view"];
      status=element["status"];

  }



}
