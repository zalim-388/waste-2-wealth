import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waste_management/UI/helpcenterscreen.dart';
import 'package:waste_management/UI/terms&conditions.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class HelpScreen extends StatelessWidget {
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
          'Help',
          style: fontStyle.heading.copyWith(fontSize: 16, color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            _buildHelpOption(
              context,
              svg: "assets/icons/icon-park-outline_helpcenter.svg",
              title: 'Help Center',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpCenterScreen()),
                );
              },
            ),

            SizedBox(height: 16.h),

            _buildHelpOption(
              context,
              svg: "assets/icons/Group 22.svg",
              title: 'Terms of Service',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsConditionsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHelpOption(
    BuildContext context, {
    required String svg,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        height: 37,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Appcolor.Containercolor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            SizedBox(width: 11.w),
            SvgPicture.asset(
              svg,
              height: 24.h,
              width: 24.w,
              fit: BoxFit.contain,
            ),

            SizedBox(width: 18.w),
            Text(
              title,
              style: fontStyle.body.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
