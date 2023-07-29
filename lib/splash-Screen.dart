import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_blog/gen/assets.gen.dart';

class SplachScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body:Column(

          children: [
            Image.asset(Assets.images.a.path),
          ],
        ),
    );
  }


}