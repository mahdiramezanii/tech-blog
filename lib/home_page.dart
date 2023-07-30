import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/my_colors.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,8,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Icon(CupertinoIcons.search),
                SizedBox(
                  height: MediaQuery.of(context).size.height/13,
                width: MediaQuery.of(context).size.width/3.7,
                  child: Image.asset(Assets.images.headicon.path)),
                Icon(Icons.menu),
                

                
              ],),
            ),
            SizedBox(height: 8,)
            ,Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/4.2,
                      width: MediaQuery.of(context).size.width/1.20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(image: AssetImage(Assets.images.programming.path),
                        fit: BoxFit.fill)
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/4.2,
                      width: MediaQuery.of(context).size.width/1.20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient:LinearGradient(colors: GradinatCollors.homeCoverImage,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                        )
                      ),
                    ),

                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Column(
                        children: [
                          Row(children: [
                            Text("Like 253"),
                            Text("ملیکا عزیزی"),
                            
                          ],)
                        ],
                      ),
                    )
                    
                  ],
                )
          ],
        ),
        
      ),
    );
  }

}