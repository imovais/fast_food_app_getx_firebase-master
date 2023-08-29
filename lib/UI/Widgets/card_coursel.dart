import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Controller/home_controller.dart';

class CardCarousel extends StatelessWidget {
  const CardCarousel({
    super.key,
    required this.c,
  });

  final HomeController c;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 120, autoPlay: true),
      items: c.cardimage.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/$i.png'))));
          },
        );
      }).toList(),
    );
  }
}
