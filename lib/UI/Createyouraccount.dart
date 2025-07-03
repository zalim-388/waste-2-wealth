import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/Address.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Createyouraccount extends StatefulWidget {
  const Createyouraccount({super.key});

  @override
  State<Createyouraccount> createState() => _CreateyouraccountState();
}

class _CreateyouraccountState extends State<Createyouraccount> {
  int selectedvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "I dispose Recyclable waste",
          style: fontStyle.body.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),

        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h),
            _container(
              title: "House Hold",
              image: "assets/icons/image 9.svg",

              value: 0,
              groupvalue: selectedvalue,
              onChanged: (val) {
                setState(() {
                  selectedvalue = val!;
                });
              },
            ),
            SizedBox(height: 12.h),
            _container(
              title: "Commercial",
              image: "assets/icons/image 10.svg",
              value: 1,
              groupvalue: selectedvalue,
              onChanged: (val) {
                setState(() {
                  selectedvalue = val!;
                });
              },
            ),
            SizedBox(height: 12.h),
            _container(
              title: "Industrial",
              image: "assets/icons/image 12.svg",
              value: 2,
              groupvalue: selectedvalue,
              onChanged: (val) {
                setState(() {
                  selectedvalue = val!;
                });
              },
            ),

            SizedBox(height: 422.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Address()),
                );
              },
              child: Container(
                height: 52.h,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,

                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Continue",
                  style: fontStyle.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _container({
  required String title,
  required String image,
  required int value,
  required int groupvalue,
  required Function(int?) onChanged,
}) {
  return Container(
    height: 48.h,
    width: 346.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFF3F2F7),
    ),
    child: Row(
      children: [
        SizedBox(width: 10.w),
        CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xFFD9D9D9),
          child: SvgPicture.asset(
            image,
            width: 24.w,
            height: 24.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          title,
          style: fontStyle.body.copyWith(fontSize: 14, color: Colors.black),
        ),
        const Spacer(),
        Radio<int>(value: value, groupValue: groupvalue, onChanged: onChanged),
        SizedBox(width: 10.w),
      ],
    ),
  );
}
