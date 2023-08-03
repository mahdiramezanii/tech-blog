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
          body: Column(
        children: [
          //header applixation
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.menu,size: 35,),
                SizedBox(
                    height: size.height/13.6,
                    width: size.width/3.7,
                    child: Image(image: AssetImage(Assets.images.headicon.path))),
                const Icon(Icons.search,size: 35,)
              ],
            ),
          ),
          //image poster
          Stack(
            children: [
              //Cintainer for image in header
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                child: Container(
                  height: size.height/4.2,
                  width: size.width/1.19,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    
                    image: DecorationImage(image: AssetImage(Assets.images.programming.path),
                    fit: BoxFit.cover),
                
                  ),
                  foregroundDecoration:const  BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(16)),
                          gradient: LinearGradient(colors: GradinatCollors.homeCoverImage,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                          ),
                          
                  ),
                ),
              ),
              //Text in Image 
              Positioned(
                left: 5,
                bottom: 5,
                right: 5,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("ملیکا عزیزی",style: Theme.of(context).textTheme.headline1,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("250 ",style: Theme.of(context).textTheme.headline1,),
                          Icon(Icons.remove_red_eye,color: Colors.white,)
                        ],
                      ),
                      
                    ],
                  ),
                  Text("دوازده قدم برنامه نویسی یک دوره ی...س",style:Theme.of(context).textTheme.headline2)
                ],),
              )
            ],
          ),
          //Hashatg List
          SizedBox(height: size.height/13,),
          SizedBox(
            height: size.height/18,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category_item.length,
              itemBuilder: (BuildContext context , int index){

              return Padding(
                padding: EdgeInsets.fromLTRB(0,0,index==0?size.width/12:20,0),
                child: Container(
                  height: size.height/18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 18, 14, 14)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      ImageIcon(AssetImage(Assets.icons.hashtag.path),color: Colors.white,size: 10,),
                      Text("  ${category_item[index].name!} ",style: Theme.of(context).textTheme.headline1),
                      
                    ]),
                  ),
                ),
              );
            }),
          ),
          
        ],
      )),
    );
  }
}