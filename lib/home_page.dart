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

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          //header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(Icons.menu),
              SizedBox(
                  height: 70,
                  width: 70,
                  child: Image(image: AssetImage(Assets.images.headicon.path))),
              const Icon(Icons.search)
            ],
          )
        ],
      )),
    );
  }
}
