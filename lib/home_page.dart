import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Scaffold(

        body: Column(

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
                SizedBox()

                
              ],),
            ),Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/4.2,
                      width: MediaQuery.of(context).size.width/1.20,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Assets.images.programming.path))
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