import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/fake_data.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/my_string.dart';
import 'package:flutter_application_2/views/profileView.dart';

import 'homeBode.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          //header applixation
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.menu,size: 35,color: Colors.black,),
                      SizedBox(
                          height: size.height/13.6,
                          width: size.width/3.7,
                          child: Image(image: AssetImage(Assets.images.headicon.path))),
                      const Icon(Icons.search,size: 35,color: Colors.black,),],
                  ),
                ],
              ),
             ) ,
          ),
          body: Stack(
            children:
          [
          Positioned.fill(child: ProfileView(size: size)),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              height: size.height/8,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: GradinatCollors.navigatorBackground)
              ),
              child: Container(
                
          
              height: size.height/10,
              width: 50,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(colors: GradinatCollors.buttonNavigation)
          
                
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){},
                   icon: ImageIcon(AssetImage(Assets.icons.home.path)),color: Colors.white,),
                  IconButton(onPressed: (){},
                   icon: ImageIcon(AssetImage(Assets.icons.write.path)),color: Colors.white,),
                  IconButton(onPressed: (){},
                   icon: ImageIcon(AssetImage(Assets.icons.user.path),color: Colors.white,)),
                ],
              ),),
              
            ),
          ),]),
          
          ),
    );
  }
}

