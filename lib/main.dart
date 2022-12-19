import 'package:flutter/material.dart';
import 'package:flutter_task/view/bottom_nav_bar.dart';
import 'package:flutter_task/view/cart_screen.dart';
import 'package:flutter_task/view/home_screen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home: BottomNavBar(),

          );
        }
    );
  }
}


