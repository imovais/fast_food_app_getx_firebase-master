// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_food_app_getx_firebase/Controller/home_controller.dart';
import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/appbar.dart';
import '../Widgets/card_coursel.dart';
import '../Widgets/drawer.dart';
import '../Widgets/explore_section.dart';
import '../Widgets/title_text_redline.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Mydrawer(),
        appBar: myappbar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TitleText(mytext: "What's New"),
              CardCarousel(
                c: c,
              ),
              Expanded(
                child: SingleChildScrollView(
                  //scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //reorder button
                      Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        height: 40,
                        color: Appcolor.primary,
                        child: Text(
                          'Reorder',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Appcolor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TitleText(
                              mytext: "Explore Menu",
                              pd: 0.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'ViewAll',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Appcolor.black),
                              ),
                            )
                          ],
                        ),
                      ),

                      //explore section
                      ExploreSection(),
                      TitleText(mytext: 'Best Seller'),

                      Container(
                        width: double.infinity,
                        height: MediaQuery.sizeOf(context).width / 1.5,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 5,
                                ),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 10,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  //height: MediaQuery.of(context).size.width / 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            width: 10,
                                            height: 25,
                                            color: Colors.red,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            width: 10,
                                            height: 25,
                                            color: Colors.red,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 5),
                                            width: 10,
                                            height: 25,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Krunch Burger',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 30,
                                        color: Appcolor.primary,
                                        child: Center(
                                          child: Text(
                                            'Rs 270',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Appcolor.white),
                                          ),
                                        ),
                                      ),
                                      Image(image: AssetImage('images/p1.png'))
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
