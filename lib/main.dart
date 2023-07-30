import 'package:flutter/material.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/splach_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme:const TextTheme(
          
          headline1:TextStyle(
            fontFamily: "dana",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: SolidCollors.homeCoverText
          ),

        )
      ),
    home: splach_screan(),
    );
  }

}