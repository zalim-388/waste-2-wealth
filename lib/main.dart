import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/Address.dart';
import 'package:waste_management/UI/bottomnav.dart';
import 'package:waste_management/UI/login_page.dart';
import 'package:waste_management/UI/new_password.dart';
import 'package:waste_management/UI/otp.dart';
import 'package:waste_management/UI/splash_2.dart';

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
          // home: SplashScreen(),
          home: NewPassword(),
        );
      },
    );
  }
}
