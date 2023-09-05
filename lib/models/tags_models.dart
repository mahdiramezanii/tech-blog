class Tag{
   String? id;
   String? title;



   Tag({
    required this.id,
    required this.title
   });


   Tag.fromJson(Map<String,dynamic> element){

    id=element["id"];
    title=element["title"];
    
   }
}