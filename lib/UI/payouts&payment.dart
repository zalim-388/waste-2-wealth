import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class payouts extends StatefulWidget {
  const payouts({super.key});

  @override
  State<payouts> createState() => _payoutsState();
}

class _payoutsState extends State<payouts> {
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
          ' Payouts and Payments',
          style: fontStyle.heading.copyWith(fontSize: 16.sp),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: 43.h),

            _payoutsCard(
              title: "Payment Methods",
              subtitle: "Add Payment Method",
              description:
                  "Add payment method using our secure payment\nsystem, then start pplanning your next transaction",

              onTap: () {},
            ),
            SizedBox(height: 6.h),

            _payoutsCard(
              title: "Earnings",
              subtitle: "Add Payment Method for all your payouts",
              description:
                  "Add payment method using our secure payment\nsystem, then start pplanning your next transaction",

              onTap: () {},
            ),
            SizedBox(height: 6.h),
            _payoutsCard(
              title: "Payouts",
              subtitle: "Add Payment Method for all your payouts",
              description:
                  "Add payment method using our secure payment\n system, then start pplanning your next transaction",

              onTap: () {},
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}

Widget _payoutsCard({
  required String title,
  String? subtitle,
  String? description,
  // Color? titleColor,
  required VoidCallback onTap,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: fontStyle.body.copyWith(fontSize: 14.sp)),
      ),

      InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Appcolor.Containercolor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 14.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (subtitle != null) ...[
                      Text(
                        subtitle,
                        style: fontStyle.body.copyWith(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4.h),
                    ],
                    if (description != null) ...[
                      Text(
                        description,
                        style: fontStyle.body.copyWith(
                          fontSize: 12.sp,
                          color: Colors.black,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Icon(Icons.edit_outlined, color: Colors.black, size: 20.w),
            ],
          ),
        ),
      ),
    ],
  );
}
