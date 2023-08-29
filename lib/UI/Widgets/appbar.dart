import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';

AppBar myappbar() {
  return AppBar(
    foregroundColor: Appcolor.black,
    backgroundColor: Appcolor.white,
    elevation: 0,
    // leading: IconButton(onPressed: ()=> , icon: Icon(Icons.reorder)),
    title: const Text("Location"),
    actions: const [
      Padding(
          padding: EdgeInsets.only(
            right: 16.0,
          ),
          child: Text(
            'KFC',
            style: TextStyle(fontSize: 30),
          )
          // Image.asset(
          //     'assets/logo.png'), // Replace 'assets/logo.png' with your actual image path
          ),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Appcolor.grey,
                    border: Border.all(color: Appcolor.primary, width: 1)),
                height: 40,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(image: AssetImage('images/delivery.png')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Delivery')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Appcolor.grey,
                  //>border: Border.all(color: Appcolor.primary, width: 1)
                ),
                height: 40,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Image(image: AssetImage('images/pickup.png')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Pickup')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
