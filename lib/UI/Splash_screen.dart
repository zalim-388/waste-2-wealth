import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/onbording.dart';

import 'package:waste_management/Utils/font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onbording()),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 392.h),
          Row(
            children: [
              Spacer(),
              Container(
                height: 59.h,
                width: 59.w,

                child: SvgPicture.asset(
                  "assets/icons/Frame 1.svg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 7.w),
              Text(
                "Waste 2 wealth",
                style: fontStyle.heading.copyWith(color: Colors.green),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
