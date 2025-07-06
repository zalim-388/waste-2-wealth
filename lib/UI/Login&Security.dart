import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class LoginSecurityScreen extends StatefulWidget {
  const LoginSecurityScreen({super.key});

  @override
  State<LoginSecurityScreen> createState() => _LoginSecurityScreenState();
}

class _LoginSecurityScreenState extends State<LoginSecurityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Login & Security',
          style: fontStyle.heading.copyWith(fontSize: 16.sp),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            SizedBox(height: 47.h),

            _buildSettingsCard(
              title: 'Password',
              subtitle: '••••••••••',
              description: 'Last changed 20 November 2023',
              onTap: () {},
            ),

            SizedBox(height: 5.h),

            _buildSettingsCard(
              title: 'Privacy Center',
              description:
                  'Take control of your privacy and learn how we protect it.',
              onTap: () {},
            ),

            SizedBox(height: 5.h),

            _buildSettingsCard(
              title: 'Deactivate your account',
              subtitle: 'Active',
              onTap: () {},
            ),

            SizedBox(height: 5.h),

            _buildSettingsCard(
              title: 'Request you personal data',
              description:
                  'We\'ll create a file for you to download your personal data.',
              onTap: () {},
            ),

            SizedBox(height: 5.h),

            _buildSettingsCard(
              title: 'Delete your account',
              description:
                  'This wil permanently delete your account and your data, in accordance with application nlaw.',
              // titleColor: Colors.red[600],
              onTap: () {
                _showDeleteAccountDialog(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsCard({
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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
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
                            color: Colors.grey[600],
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

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          title: Text(
            'Delete Account',
            style: fontStyle.heading.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            'Are you sure you want to delete your account? This action cannot be undone and all your data will be permanently removed.',
            style: fontStyle.body.copyWith(
              fontSize: 14.sp,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: fontStyle.body.copyWith(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                _handleAccountDeletion(context);
              },
              child: Text(
                'Delete',
                style: fontStyle.body.copyWith(
                  fontSize: 14.sp,
                  color: Colors.red[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _handleAccountDeletion(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red[600]!),
              ),
              SizedBox(height: 16.h),
              Text(
                'Deleting account...',
                style: fontStyle.body.copyWith(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
