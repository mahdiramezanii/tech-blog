import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/data.dart';
import 'package:flutter_application_2/component/my_colors.dart';
import 'package:flutter_application_2/component/my_string.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/gen/assets.gen.dart';

class ComplateProfile extends StatefulWidget {
  @override
  State<ComplateProfile> createState() => _ComplateProfileState();
}

class _ComplateProfileState extends State<ComplateProfile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 3,
                child: SvgPicture.asset(Assets.images.techbot.path)),
            RichText(
                text: TextSpan(
                    text: MyString.complateEmail,
                    style: Theme.of(context).textTheme.bodyText1)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: "نام خود را وارد کنید",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 10),
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
            Text(
              """دسته بندی هایی که دوست داری رو انتخاب کن""",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: GridView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: category_item.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.2),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                                colors: GradinatCollors.hashtagGradinatColor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ImageIcon(
                              AssetImage(Assets.icons.hashtag.path),
                              color: Colors.white,
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if (selectedCat.contains(category_item[index])){
                                  print("mhj");
                                  }else{
                                    selectedCat.add(category_item[index]);
                                  }

                                });
                                
                              },
                              child: Text(
                                category_item[index].name!,
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: ImageIcon(
                  AssetImage(Assets.images.flash.path),
                  size: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: selectedCat.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                                colors: GradinatCollors.hashtagGradinatColor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: (){

                                setState(() {
                                  selectedCat.removeAt(index);
                                });
                              },
                              child: Icon(CupertinoIcons.delete,color: Colors.white,)),
                            Text(
                              category_item[index].name!,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
