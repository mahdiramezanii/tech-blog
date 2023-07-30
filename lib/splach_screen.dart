import 'package:flutter/material.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/home_page.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class splach_screan extends StatefulWidget{

  
  @override
  State<splach_screan> createState() => _splach_screanState();
}

class _splach_screanState extends State<splach_screan> {

  @override
  void initState(){

    Future.delayed(Duration(seconds: 2)).then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return HomePage();
      }));
    });

      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                SizedBox(
                  width: 100,
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset(Assets.images.icon.path)),
                SpinKitRotatingCircle(
          color: SolidCollors.primayColor,
          size: 40,
        )
              ],
          ),
        ),
      ),
    );
  }
}