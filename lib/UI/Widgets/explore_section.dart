import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 3.5,
      //color: Appcolor.grey,
      child: const Row(
        children: [
          //first column
          Expanded(
            child: MyCard(
                myytext: 'Everyday \nValue',
                image: 'images/p1.png',
                textsize: 18),
          ),
          //second column
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: MyCard(
                        myytext: 'Ala-Cart \n-&-Combos',
                        image: 'images/p3.png')),
                Expanded(
                    child: MyCard(
                        myytext: 'Signature \nBox', image: 'images/p4.png')),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: MyCard(
                      myytext: 'Share', image: 'images/p5.png', textsize: 16),
                ),
                Expanded(
                  child: MyCard(
                      myytext: 'Snack-&- \nBeverages',
                      image: 'images/p6.png',
                      textsize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard(
      {super.key,
      required this.myytext,
      required this.image,
      this.textsize = 14.0});

  final String myytext;
  final String image;
  final double? textsize;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: double.infinity,
        child: Stack(
          alignment: Alignment.bottomCenter,
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            Image(image: AssetImage(image)),

            // Positioned(
            //   bottom: 2.0,
            //   child: Container(
            //     height: 90,
            //     width: double.minPositive,
            //     decoration: const BoxDecoration(
            //       //color: Colors.red,
            //       image: DecorationImage(
            //           fit: BoxFit.contain, image: AssetImage('images/p1.png')),
            //       // border: Border.all(
            //       //     color: Appcolor.primary, style: BorderStyle.solid),
            //       // borderRadius: BorderRadius.circular(15)),
            //     ),
            //   ),
            // ),
            Positioned(
              top: 3,
              left: 3,
              child: Text(
                myytext,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: textsize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
