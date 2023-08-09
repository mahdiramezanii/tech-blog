import 'package:flutter/material.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/my_colors.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
        Image(image: AssetImage(Assets.images.user.path),height: 150,),
        const SizedBox(height: 35,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          ImageIcon(AssetImage(Assets.icons.pen.path),color: Colors.blue,),
          SizedBox(width: 10,),
          Text("ویرایش عکس پروفایل",style: Theme.of(context).textTheme.headline3,),
          
          
        ],),
        const SizedBox(height: 50,),
        const Text("فاطمه امیری",style: TextStyle(
          fontFamily: "dana",
          fontWeight: FontWeight.w300,
          color:Color.fromARGB(255, 160, 101, 215),
          fontSize: 18,
        ),),
        const SizedBox(height: 15,),
        const Text("mahdiramazani@gmial.com",style: TextStyle(
          fontFamily: "dana",
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),),
        const SizedBox(height: 30,),

        Divider(
          color: Colors.black,
          height: 1.3,
          indent: size.width/6,
          endIndent: size.width/6,
        ),
        
        InkWell(
          onTap: () {
            
          },
          child:
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Center(
              child: const Text("مقالات مورد علاقه ی من",style: TextStyle(
              fontFamily: "dana",
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color:Colors.black
                      ),),
            ),
          )  
          ),
        
        Divider(
          color: Colors.black,
          height: 1.3,
          indent: size.width/6,
          endIndent: size.width/6,
        )

        
        //
        ],
        ),
      );
  }
}