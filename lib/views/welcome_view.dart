import 'package:flutter/material.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/my_string.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomPageView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SafeArea(
      child: Scaffold(
        body:Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
             SvgPicture.asset(Assets.images.techbot.path,height: 100,),
             RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              
              text:MyString.welcomString,
              style: TextStyle(
                color: Colors.black
              ),
              
             ))
             ], 
          ),
        ) ,
        ) );
  }

  
}