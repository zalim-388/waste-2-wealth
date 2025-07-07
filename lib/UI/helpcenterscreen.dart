import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class HelpCenterScreen extends StatefulWidget {
  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  // bool _isLoading = false;

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
          'Help Center',
          style: fontStyle.heading.copyWith(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: fontStyle.body.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 16.h),

            Container(
              height: 147.h,
              width: 345.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Appcolor.Containercolor, width: 1.7),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3.h),

                  Row(
                    children: [
                      SizedBox(width: 20.w),
                      Text(
                        'Speak with our customer support',
                        style: fontStyle.body.copyWith(
                          fontSize: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 13.h),

                  _buildContactItem(
                    svg: "assets/icons/Group 12823.svg",
                    title: 'Speakwith@gmail.com',
                    onTap: () => _launchEmail('Speakwith@gmail.com'),
                  ),

                  SizedBox(height: 12.h),

                  _buildContactItem(
                    svg: "assets/icons/Vector (2) copy.svg",
                    title: '+91 9775 851 561',
                    onTap: () => _launchPhone('+919775851561'),
                  ),

                  SizedBox(height: 12.h),

                  _buildContactItem(
                    svg: "assets/icons/Group copy 2.svg",
                    title: 'Hour Of Operations 10AM - 7 pm',
                    onTap: null,
                  ),
                ],
              ),
            ),

            SizedBox(height: 14.h),

            Text(
              'Address',
              style: fontStyle.body.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),

            SizedBox(height: 16.h),

            Container(
              height: 112.h,
              width: 345.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Appcolor.Containercolor, width: 1.7),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'Information',
                      style: fontStyle.body.copyWith(
                        fontSize: 11.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      '  Bright Lifecare Pvt. Ltd.',
                      style: fontStyle.body.copyWith(
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '  Wing B, 1st Floor, Tower-B The Presidency Tower Anamika\n  Enclave Sector-14, Mehrauli Gurgaon Road, Opp. Govt. Girls\n  College, Gurgaon, Gurugram, Haryana-122001',
                      style: fontStyle.body.copyWith(
                        fontSize: 10.sp,
                        color: Colors.grey[700],
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required String svg,
    required String title,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Row(
        children: [
          SizedBox(width: 20.w),
          Container(
            height: 22.h,
            width: 22.w,
            decoration: BoxDecoration(
              color: Appcolor.Containercolor,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              svg,
              height: 10.h,
              width: 14.w,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 9.w),
          Text(
            title,
            style: fontStyle.body.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchEmail(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Support Request&body=Hello, I need help with...',
    );

    try {
      if (await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
      } else {
        _showSnackBar('Could not launch email client');
      }
    } catch (e) {
      _showSnackBar('Error launching email: $e');
    }
  }

  Future<void> _launchPhone(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    try {
      if (await canLaunchUrl(phoneUri)) {
        await launchUrl(phoneUri);
      } else {
        _showSnackBar('Could not launch phone dialer');
      }
    } catch (e) {
      _showSnackBar('Error launching phone: $e');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green[600],
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    );
  }
}
