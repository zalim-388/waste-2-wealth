import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waste_management/UI/referrals2.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';
import 'package:flutter/gestures.dart';

class Referrals extends StatefulWidget {
  const Referrals({super.key});

  @override
  State<Referrals> createState() => _ReferralsState();
}

class _ReferralsState extends State<Referrals> {
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
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          children: [
            SizedBox(height: 23.h),
            Text(
              "  Refer a Disposer,Picker or a\nRecycler, earn a cash reward",
              style: fontStyle.heading.copyWith(fontSize: 16),
            ),

            SizedBox(height: 14.h),
            SvgPicture.asset(
              "assets/images/image-2.svg",
              fit: BoxFit.contain,
              height: 202.h,
              width: 224.w,
            ),

            RichText(
              text: TextSpan(
                style: fontStyle.body.copyWith(fontSize: 12),
                children: [
                  TextSpan(
                    text:
                        "Rewards vary by listing type, and size and are only\navailable in eligible locations. ",
                  ),
                  TextSpan(
                    text: "Terms apply",
                    style: fontStyle.body.copyWith(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms apply tapped');
                          },
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 83),
              child: Divider(color: Colors.grey),
            ),
            SizedBox(height: 13.h),
            Text(
              "How it works",
              style: fontStyle.custom.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 13.h),

            _referralsdata(
              svg: "assets/icons/User Account.svg",
              title: "Tell us who you’re referring",
              description:
                  "You can refer your friend to list a recyclable material\nfor disposal or pick the material or to recycle the .  ",
            ),
            SizedBox(height: 13.h),
            _referralsdata(
              svg: "assets/icons/Send.svg",
              title: "Send them your referral link",
              description:
                  "Make sure your friend creates their listing using your\nunique link.",
            ),
            SizedBox(height: 13.h),
            _referralsdata(
              svg: "assets/icons/Stack of Coins.svg",
              title: "Get rewarded",
              description:
                  "After they host their first eligible booking your reward\nwill be sent within 14 days.",
            ),
            SizedBox(height: 22.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 83),
              child: Divider(color: Colors.grey),
            ),
            SizedBox(height: 23.h),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Referrals2()),
                );
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
                  "Get Started",
                  style: fontStyle.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28.h),
            //  recognizer:
            //                             TapGestureRecognizer()
            //                               ..onTap = () {
            //                                 print('Update phone number tapped');
            //                               },
            Text(
              "View your referrals",
              style: fontStyle.body.copyWith(
                fontSize: 12,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _referralsdata({
  required String svg,
  required String title,
  required String description,
}) {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 26.h,
            width: 26.w,
            decoration: BoxDecoration(
              color: Appcolor.Containercolor,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(svg, height: 20.h, width: 20.w),
          ),
          SizedBox(width: 3.w),

          Text(
            title,
            style: fontStyle.custom.copyWith(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),

      Text(description, style: fontStyle.body.copyWith(fontSize: 12)),
    ],
  );
}
