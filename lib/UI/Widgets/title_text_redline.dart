import 'package:flutter/material.dart';

import '../../Utils/Constant/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.mytext, this.pd = 8.0});

  final mytext;
  final pd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: pd),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mytext,
            textAlign: TextAlign.start,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 20,
            child: Divider(
              height: 5,
              thickness: 3,
              color: Appcolor.primary,
            ),
          )
        ],
      ),
    );
  }
}
