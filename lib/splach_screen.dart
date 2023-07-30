import 'package:flutter/material.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';

class splach_screan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    
    return SafeArea(
      child: Scaffold(
        body: Column(
            children: [
              Image.asset(Assets.images.icon.path)
            ],
        ),
      ),
    );
  }


}