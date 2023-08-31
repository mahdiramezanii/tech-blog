import 'package:flutter/material.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/views/splach_screen.dart';
import 'package:flutter_application_2/views/welcome_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('fa'), // English

  ],
      theme: ThemeData(
        textTheme:const TextTheme(
          
          headline1:TextStyle(
            fontFamily: "dana",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: SolidCollors.homeCoverText
          ),
          headline2: TextStyle(
            fontFamily: "dana",
            fontSize: 18,
            color: SolidCollors.homeCoverTitelText,
            fontWeight: FontWeight.w700
          ),
          headline3: 
          TextStyle(
            fontFamily: "dana",
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: SolidCollors.titleHotText
          )

        )
      ),
    // home: splach_screan(),
    home: splach_screan(),
    );
  }

}