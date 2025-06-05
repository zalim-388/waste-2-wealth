import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Successful extends StatefulWidget {
  const Successful({super.key});

  @override
  State<Successful> createState() => _SuccessfulState();
}

class _SuccessfulState extends State<Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Successful",
          style: fontStyle.heading.copyWith(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 52.h),
            Container(
              height: 98.h,
              width: 98.w,
              decoration: BoxDecoration(
                color: Appcolor.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.check, color: Colors.white, size: 30),
            ),
            SizedBox(height: 17.h),
            Text("Successful", style: fontStyle.heading.copyWith(fontSize: 20)),
            SizedBox(height: 23.h),
            Text(
              "  Congratulations! Your password has been\nsuccessfully updated. Click Continue to login",
              style: fontStyle.body.copyWith(fontSize: 15),
            ),
            SizedBox(height: 28.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Successful()),
                );
              },
              child: Container(
                height: 56.h,
                width: 346.w,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Countine",
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
