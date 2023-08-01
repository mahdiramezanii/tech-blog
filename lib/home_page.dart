import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/fake_data.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/my_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.search),
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 13,
                        width: MediaQuery.of(context).size.width / 3.7,
                        child: Image.asset(Assets.images.headicon.path)),
                    const Icon(Icons.menu),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(TextPosterHome["image"]),
                            fit: BoxFit.fill)),
                    foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: const LinearGradient(
                            colors: GradinatCollors.homeCoverImage,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.remove_red_eye_sharp,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${TextPosterHome["like"]}",
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                              ],
                            ),
                            Text(
                              TextPosterHome["writer"],
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ],
                        ),
                        Text(
                          TextPosterHome["title"],
                          style: Theme.of(context).textTheme.headline2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                    itemCount: category_item.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.fromLTRB(5, 5, index == 0 ? 30 : 5, 5),
                        child: Container(
                            height: 60,
                            width: 100,
                            decoration:const  BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                gradient: const LinearGradient(
                                    colors: GradinatCollors.hashtagGradinatColor,
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(children: [
                                  ImageIcon(AssetImage(Assets.icons.hashtag.path),size: 15,color: Colors.white,),
                                  Text(category_item[index].name!,
                                    style: TextStyle(color: Colors.white)),
                                    
                                ],)
                              ],
                            )),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 37.7,
                        width: MediaQuery.of(context).size.width / 19.7,
                        child: Image(
                          image: AssetImage(Assets.images.pen.path),
                        )),
                    Text(
                      MyString.viewHotText,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              )
            ,
            //secoun list view show hot text
            Column(
              children: [
                SizedBox(height: 50,),
                SizedBox(
                  height: size.height/4,
                  child: 
                  ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context , int index){
        
        
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,29,0),
                      child: Stack(children: [
        
                        Container(
                    
                        height: size.height/4,
                        width: size.width/2.7,
                        
                    
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          image: DecorationImage(image: AssetImage(Assets.images.programming.path)
                          ,fit: BoxFit.cover)
                          
                        ),
        
                        foregroundDecoration:const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(colors:GradinatCollors.listViewHotText,
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter )
                          
                        ),
                      ),
                      Positioned(
                        left: 5,
                        bottom: 5,
                        child: Row(children: [
                          Text("250",style:Theme.of(context).textTheme.headline1),
                          const Icon(Icons.remove_red_eye,color: Colors.white,),
                          
                        ],),
                        
                      ),Positioned(
                        bottom: 5,
                        right: 5
                        ,child: Text("ملیکا عزیزی",style: Theme.of(context).textTheme.headline1,)),
                      ],)
                    );
                  })
                
                )
              ],
            )
            ,
            Column(children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right:30),
                child: Row(children: [

                  Icon(Icons.mail,color:Colors.blue),
                  Text("مشاهده داغترین پادکست ها",style:Theme.of(context).textTheme.headline3),
                  
                ],),

              
              ),SizedBox(
                height: size.height/4,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,int index){

                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10,5,30,30),
                    child: Column(children: [
                      Container(
                      height: size.height/4,
                          width: size.width/2.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image:DecorationImage(image: AssetImage(Assets.images.programming.path),
                        fit: BoxFit.cover),

                        
                        
                      ),
                      
                    ),
                    
                    ],)
                  );
                }),
              )
            ],)
            ],

            
          ),
        ),
      ),
    );
  }
}
