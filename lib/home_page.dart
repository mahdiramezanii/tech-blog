import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/fake_data.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/my_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(CupertinoIcons.search),
                  SizedBox(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 3.7,
                      child: Image.asset(Assets.images.headicon.path)),
                  const Icon(Icons.menu),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4.2,
                  width: MediaQuery.of(context).size.width / 1.20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(TextPosterHome["image"]),
                          fit: BoxFit.fill)),
                  foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: const LinearGradient(
                          colors: GradinatCollors.homeCoverImage,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${TextPosterHome["like"]}",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ],
                          ),
                          Text(
                            TextPosterHome["writer"],
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                      Text(
                        TextPosterHome["title"],
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,40,0,0),
              child: Container(
                height: 30,
                width: 500,
                child: ListView.builder(
                    itemCount: category_item.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:  EdgeInsets.fromLTRB(5,0,5,0),
                        child: Container(
                          height: 20,
                          width: 100 ,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: GradinatCollors.hashtagGradinatColor,
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                              )
                              ),
                      
                              child: Center(child: Text("${category_item[index].name!} #",style: const TextStyle(color: Colors.white),)),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,20,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("مشاهده داغترین نوشته ها "),
                  Icon(Icons.pentagon)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
