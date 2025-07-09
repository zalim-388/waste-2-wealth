import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class RecyclePage extends StatefulWidget {
  const RecyclePage({super.key});

  @override
  State<RecyclePage> createState() => _RecyclePageState();
}

class _RecyclePageState extends State<RecyclePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 46.h),
            Container(
              height: 47.h,
              width: 347.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.91),
                border: Border.all(color: Appcolor.Containercolor),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 8.h),
                  TabBar(
                    labelStyle: fontStyle.body.copyWith(fontSize: 14),
                    indicatorColor: Appcolor.primaryColor,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.93),
                    ),
                    tabs: [Tab(text: "Companies"), Tab(text: "Ideas")],
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
