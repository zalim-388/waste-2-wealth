import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Preferences',
          style: fontStyle.heading.copyWith(fontSize: 16.sp),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            SizedBox(height: 45.h),
            _Preferencecard(title: "Date", hintText: "DD-MM-YYYY"),

            SizedBox(height: 6.h),

            _Preferencecard(title: "Time", hintText: "HH:MM:SS  AM"),

            SizedBox(height: 6.h),
            _Preferencecard(title: "Currency", hintText: "INR - Indian Rupee"),

            SizedBox(height: 6.h),
            _Preferencecard(title: "Solid", hintText: "Kilogram"),

            SizedBox(height: 6.h),
            _Preferencecard(title: "Language", hintText: "English"),

            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}

Widget _Preferencecard({
  required String title,
  required String hintText,

  VoidCallback? onTap,
}) {
  return Container(
    height: 48.h,
    width: 346.w,
    decoration: BoxDecoration(
      color: Appcolor.Containercolor,
      borderRadius: BorderRadius.circular(15),
    ),

    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 23.h),
        Text(
          title,
          style: fontStyle.body.copyWith(fontSize: 14, color: Colors.black),
        ),
        Spacer(),
        SizedBox(width: 20.w),
        Text(
          hintText,
          style: fontStyle.body.copyWith(
            fontSize: 14,
            color: Color(0xFFAFAFAF),
          ),
        ),
        Spacer(),

        IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFFAFAFAF),
            size: 13,
          ),
        ),
      ],
    ),
  );
}
