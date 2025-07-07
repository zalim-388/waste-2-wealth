import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/font_style.dart';

class Privacypolicy extends StatefulWidget {
  const Privacypolicy({super.key});

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  bool _isScrolled = false;
  ScrollController _scrollController = ScrollController();
  @override
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 0 && !_isScrolled) {
        setState(() {
          _isScrolled = true;
        });
      } else if (_scrollController.offset <= 0 && _isScrolled) {
        setState(() {
          _isScrolled = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: _isScrolled ? 1 : 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Privacy Policy',
          style: fontStyle.heading.copyWith(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Text(
                "Effective Date: [Insert Date]Last Updated:[Insert Date]\n"
                "Welcome to [App Name] (\"we,\" \"our,\" or \"us\"). "
                "This Privacy Policy explains how we collect, use, disclose, "
                "and safeguard your information when you use our mobile application, "
                "which provides a platform for users to buy and sell recyclable materials (the “Service”).",
                style: fontStyle.body.copyWith(fontSize: 15.sp),
              ),
              SizedBox(height: 24.h),
              _buildSection(
                title: "1. Information We Collect",
                content: [
                  SizedBox(height: 8.h),
                  Text(
                    "a. Personal Information",
                    style: fontStyle.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _buildBulletPoint("Full name"),
                  _buildBulletPoint("Email address"),
                  _buildBulletPoint("Phone number"),
                  _buildBulletPoint("Billing and shipping address"),
                  _buildBulletPoint(
                    "Payment details (processed via secure third-party payment processors)",
                  ),

                  SizedBox(height: 16.h),
                  Text(
                    "b. Automatically Collected Information",
                    style: fontStyle.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _buildBulletPoint("Device type and ID"),
                  _buildBulletPoint("IP address"),
                  _buildBulletPoint("Operating system"),
                  _buildBulletPoint(
                    "Browsing behavior on the app (e.g., pages viewed, links clicked)",
                  ),
                  _buildBulletPoint("Location data (with your permission)"),

                  SizedBox(height: 16.h),
                  Text(
                    "c. User-Generated Content",
                    style: fontStyle.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _buildBulletPoint("Listings and item descriptions"),
                  _buildBulletPoint("Images of recyclable materials"),
                  _buildBulletPoint("Messages exchanged with other users"),
                ],
              ),

              _buildSection(
                title: "2. How We Use Your Information",
                content: [
                  Text(
                    "We use the collected information to:",
                    style: fontStyle.body.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  _buildBulletPoint("Create and manage your account"),
                  _buildBulletPoint("Facilitate transactions between users"),
                  _buildBulletPoint("Provide customer support"),
                  _buildBulletPoint(
                    "Improve and personalize the app experience",
                  ),
                  _buildBulletPoint("Monitor and analyze usage patterns"),
                  _buildBulletPoint(
                    "Send important updates and promotional materials (you may opt out)",
                  ),

                  _buildSection(
                    title: "3. How We Share Your Information",
                    content: [
                      _buildBulletPoint(
                        "We do not sell your data. However, we may share information with:",
                      ),
                      _buildBulletPoint(
                        "Service Providers: Payment gateways, cloud services, analytics tools, etc.",
                      ),
                      _buildBulletPoint(
                        "Other Users: When necessary for completing a transaction",
                      ),
                      _buildBulletPoint(
                        "Law Enforcement or Legal Requests: When required by law or to protect rights",
                      ),
                      _buildBulletPoint(
                        "Business Transfers: In case of a merger, acquisition, or asset sale",
                      ),
                    ],
                  ),

                  _buildSection(
                    title: "4. Data Security",
                    content: [
                      Text(
                        "We implement reasonable administrative, technical, and physical safeguards to protect your data. However, no method of transmission or storage is 100% secure.",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  _buildSection(
                    title: "5. Your Privacy Rights",
                    content: [
                      Text(
                        "Depending on your jurisdiction, you may have the right to:",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _buildBulletPoint(
                        "Access the personal data we hold about you",
                      ),
                      _buildBulletPoint(
                        "Request correction or deletion of your data",
                      ),
                      _buildBulletPoint(
                        "Object to or restrict certain processing",
                      ),
                      _buildBulletPoint("Withdraw consent at any time"),
                      _buildBulletPoint(
                        "File a complaint with a data protection authority",
                      ),

                      Text(
                        "To exercise these rights, contact US at: [support@example.com]",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  _buildSection(
                    title: "6. Children's Privacy",
                    content: [
                      Text(
                        "Our app is not intended for individuals under the age of 13 (or 16 in some jurisdictions). We do not knowingly collect personal data from children.",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  _buildSection(
                    title: "7. Third-Party Links",
                    content: [
                      Text(
                        "Our app may contain links to third-party websites or services. We are not responsible for their privacy practices or content.",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  _buildSection(
                    title: "8. Changes to This Privacy Policy",
                    content: [
                      Text(
                        "We may update this policy from time to time. We will notify you of significant changes by posting the updated policy on the app or via email.",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  _buildSection(
                    title: "9. Contact Us",
                    content: [
                      Text(
                        "If you have any questions or concerns about this Privacy Policy. contact<78/84 >USat:\n@example.com][Company Adaress",
                        style: fontStyle.body.copyWith(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSection({required String title, required List<Widget> content}) {
  return Container(
    margin: EdgeInsets.only(bottom: 24.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: fontStyle.body.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        ...content,
      ],
    ),
  );
}

Widget _buildBulletPoint(String text) {
  return Container(
    // margin: EdgeInsets.only(bottom: 8.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 6.h, right: 8.w),
          width: 6.w,
          height: 6.w,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: fontStyle.body.copyWith(
              fontSize: 14.sp,
              color: Colors.grey[800],
            ),
          ),
        ),
      ],
    ),
  );
}
