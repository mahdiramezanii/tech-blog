import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'gen/assets.gen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('fa'), //farsi
  ],

  theme: ThemeData(

    textTheme: const TextTheme(
      headline1: 
      TextStyle(
        fontSize: 30,
        fontFamily: "dana",
        fontWeight: FontWeight.w700
      )
    )
  ),

      home: Scaffold(body: Center(child: Image.asset(Assets.images.a.path)),),
    );
  }


}