import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Appcolor.grey,
      elevation: 10,
      backgroundColor: Appcolor.white,
      child: ListView(
        children: [
          ListTile(
            title: const Text("Home"),
            onTap: () {
              // Handle home navigation
            },
          ),
          ListTile(
            title: const Text("Learning"),
            onTap: () {
              // Handle profile navigation
            },
          ),
          // Add more drawer items as needed
        ],
      ),
    );
  }
}
