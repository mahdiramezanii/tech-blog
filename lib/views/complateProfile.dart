import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/my_string.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';

class ComplateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 3,
                child: SvgPicture.asset(Assets.images.techbot.path)),
            RichText(text: TextSpan(
              text: MyString.complateEmail,style: Theme.of(context).textTheme.bodyText1
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "نام خود را وارد کنید",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Text("""دسته بندی هایی که دوست داری رو انتخاب کن""",style: Theme.of(context).textTheme.bodyText1,),
          
            SizedBox(
              height: 200,
              width:double.infinity,
              
              child: GridView.builder(
                
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.2
              ), itemBuilder: (BuildContext context , int index){
          
                return Container(
                  height: 100,
                  width:MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(colors: GradinatCollors.hashtagGradinatColor)
                  ),
                  child: Center(child: Text("مهدی رمضانی  ",style: TextStyle(color: Colors.white),)),
                );
              }),
            )
          ],
              ),
        ),
            
          ));
  }
}
