import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/fake_data.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/my_colors.dart';
import 'package:flutter_application_2/my_string.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return  SafeArea(
      child: Scaffold(
              body:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround
                    ,children: [
                    Icon(Icons.menu),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child:
                      Image(image: AssetImage(Assets.images.headicon.path))),
                    Icon(Icons.search)
    
                  ],)
                ],
              )
      ),
    );
    
  }}