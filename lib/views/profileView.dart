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
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
        Image(image: AssetImage(Assets.images.user.path),height: 150,),
        SizedBox(height: 35,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          ImageIcon(AssetImage(Assets.icons.pen.path),color: Colors.blue,),
          SizedBox(width: 10,),
          Text("ویرایش عکس پروفایل",style: Theme.of(context).textTheme.headline3,)
        ],)
        
        //
        ],
        ),
      );
  }
}