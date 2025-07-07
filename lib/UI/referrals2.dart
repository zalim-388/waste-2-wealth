import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/Utils/Appcolors.dart' show Appcolor;
import 'package:waste_management/Utils/font_style.dart';

class Referrals2 extends StatefulWidget {
  const Referrals2({super.key});

  @override
  State<Referrals2> createState() => _Referrals2State();
}

class _Referrals2State extends State<Referrals2> {
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
          'Referrals',
          style: fontStyle.heading.copyWith(fontSize: 16.sp),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          children: [
            SizedBox(height: 29.h),
            Text(
              "What type of host are you referring?",
              style: fontStyle.bold.copyWith(fontSize: 16),
            ),
            SizedBox(height: 23.h),
            _referralTypeCard(
              iconPath: "assets/icons/Disposal.svg",
              title: "Disposer",
              points: "You’l earn 250 points",
            ),
            SizedBox(height: 23.h),
            _referralTypeCard(
              iconPath: "assets/icons/Disposal.svg",
              title: "Picker",
              points: "You’l earn 500 points",
            ),
            SizedBox(height: 23.h),
            _referralTypeCard(
              iconPath: "assets/icons/Disposal.svg",
              title: "Recycler",
              points: "You’l earn 1,000 points",
            ),
            SizedBox(height: 33.h),
            Text(
              "Reward points apply to listings created via your referral\nlink until May 15, 2025. New hosts must complete a\n qualifying listing, collection with in 180 days. Learn More",
              style: fontStyle.body.copyWith(fontSize: 12),
            ),
            SizedBox(height: 149.h),

            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Referrals2()),
                // );
              },
              child: Container(
                height: 52.h,
                width: 346.w,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,

                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Create a Referral link",
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

Widget _referralTypeCard({
  required String iconPath,
  required String title,
  required String points,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 12.h),
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
    decoration: BoxDecoration(
      color: Color(0xFFF7F5FA),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      children: [
        SvgPicture.asset(iconPath, height: 32.h, width: 32.w),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: fontStyle.heading.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "You’ll earn $points",
              style: fontStyle.body.copyWith(
                fontSize: 12.sp,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
