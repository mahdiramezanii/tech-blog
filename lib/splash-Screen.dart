import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplachScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.images.a.path),
            SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,)
          ],
        ),
    );
  }


}