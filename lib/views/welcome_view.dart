import 'package:flutter/material.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/my_string.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:validators/validators.dart';

class WelcomPageView extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    RegExp is_email=RegExp("^[a-z-1-9]+@+^[gmail-yahoo]+.com");
    var textTheme=Theme.of(context);
    // TODO: implement build
    return  SafeArea(
      child: Scaffold(
        body:Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
             SvgPicture.asset(Assets.images.techbot.path,height: 100,),
             Padding(
               padding: const EdgeInsets.only(top:9.0),
               child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                
                text:MyString.welcomString,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),

                
               )),
             ),
             ElevatedButton(
              onPressed: (){

              showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor:Colors.transparent,
              context: context, builder: (BuildContext context){
                
                return Padding(
                  padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    height: MediaQuery.of(context).size.height/3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
                      color: Colors.white,
                    ),
                
                    child: Column(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: 10),
                          child: Text("ایمیل  خودت رو وارد کن",style: TextStyle(fontSize: 20,
                          fontFamily: "dana",
                          fontWeight: FontWeight.w300 ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            onChanged:(value){
                             
                              print(isEmail(value));
                            },
                            
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 10)
                              ),
                              hintText: "mahdiramazani@gmail.com",
                              
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: "dana",
                                fontSize: 18,
                                fontWeight: FontWeight.w300
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,20,0,0),
                          child: ElevatedButton(onPressed: (){},
                           child: Text("بزن بریم"),
                           ),
                        )
                      ],
                    ),
                  ),
                );
              });
              },
              child: Text("ثبت نام"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith((states){

                  if(states.contains(MaterialState.pressed)){
                        return TextStyle(fontSize: 20);
                  }
                  else{
                    return TextStyle(fontSize: 30);
                  }
                })
              ),
              )
            
             ], 
          ),
        ) ,
        ) );
  }

  
}