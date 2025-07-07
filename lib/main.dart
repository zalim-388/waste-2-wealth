import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/Createyouraccount.dart';
import 'package:waste_management/UI/Splash_screen.dart';
import 'package:waste_management/UI/faQ.dart';
import 'package:waste_management/UI/help.dart';
import 'package:waste_management/UI/privacypolicy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Createyouraccount(),
          // home: NewPassword(),
        );
      },
    );
  }
}
