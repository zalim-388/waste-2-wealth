import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/font_style.dart';

class TermsConditionsScreen extends StatefulWidget {
  @override
  _TermsConditionsScreenState createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: _isScrolled ? 1 : 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Terms & Conditions',
          style: fontStyle.heading.copyWith(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'When developing a mobile application focused on buying and selling recyclable materials, it\'s crucial to establish comprehensive Terms of Service (ToS) to ensure legal compliance, protect user rights, and define the responsibilities of all parties involved. Below is a structured outline of key components commonly found in ToS for similar platforms:',
              style: fontStyle.body.copyWith(fontSize: 15.sp),
            ),

            SizedBox(height: 24.h),

            // Section 1
            _buildSection(
              title: '1. User Eligibility and Account Management',
              content: [
                _buildBulletPoint(
                  'Age Requirement: Users must be at least 18 years old.',
                ),
                _buildBulletPoint(
                  'Account Responsibility: Users are responsible for maintaining the confidentiality of their account credentials and for all activities that occur under their account.',
                  links: ['Home', 'Recycle Coach'],
                ),
              ],
            ),

            _buildSection(
              title: '2. Permitted Use and Conduct',
              content: [
                _buildBulletPoint(
                  'Acceptable Use: Users agree to use the app solely for lawful purposes related to buying and selling recyclable materials.',
                ),
                _buildBulletPoint(
                  'Prohibited Activities: Users must not engage in activities such as posting false information, infringing on intellectual property rights, or transmitting harmful code.IDEAL Trash and Recycling',
                  links: ['IDEAL Trash and Recycling'],
                ),
              ],
            ),

            _buildSection(
              title: '3. Transaction Terms',
              content: [
                _buildBulletPoint(
                  'Listing Accuracy: Sellers must provide accurate descriptions of recyclable materials.',
                ),
                _buildBulletPoint(
                  'Payment and Fees: The app may facilitate payments and charge transaction fees, which will be disclosed to users.',
                ),
                _buildBulletPoint(
                  'Dispute Resolution: The platform may offer mechanisms for resolving disputes between buyers and sellers.',
                ),
              ],
            ),
            _buildSection(
              title: "4.Intellectual Property Rights",
              content: [
                _buildBulletPoint(
                  "User Content: Users grant the app a license to use content they upload, such as listings and images, for promotional purposes.",
                ),
                _buildBulletPoint(
                  "App Content: All intellectual property related to the app itself remains the property of the app developers or licensors.",
                ),
              ],
            ),

            _buildSection(
              title: "5. Privacy and Data Protection",
              content: [
                _buildBulletPoint(
                  "Data Collection: The app collects personal information as described in its Privacy Policy.",
                ),
                _buildBulletPoint(
                  "Data Usage: Collected data is used to provide and improve services, and may be shared with third parties as outlined in the Privacy Policy.\nRogue Disposal & Recycling",
                  links: ["Rogue Disposal & Recycling"],
                ),
              ],
            ),

            _buildSection(
              title: "6. Modifications and Termination",
              content: [
                _buildBulletPoint(
                  "Terms Updates: The app reserves the right to modify the ToS at any time, with changes taking effect upon posting.",
                ),
                _buildBulletPoint(
                  "Account Termination: The app may suspend or terminate user accounts for violations of the ToS.",
                ),
              ],
            ),

            _buildSection(
              title: "7. Limitation of Liability",
              content: [
                _buildBulletPoint(
                  "Service Availability: The app does notguarantee uninterrupted access and may experience downtime.",
                ),
                _buildBulletPoint(
                  "Liability Cap: The app's liability is limited to the maximum extent permitted by law. Help Center",
                  links: ["Help Center"],
                ),
              ],
            ),

            _buildSection(
              title: "8. Governing Law and Dispute Resolution",
              content: [
                _buildBulletPoint(
                  "Jurisdiction: The ToS are governed by the laws of the jurisdiction in which the app operates.",
                ),
                _buildBulletPoint(
                  "Dispute Mechanism: Disputes may be resolved through arbitration or in courts, as specified in",
                ),
              ],
            ),
          ],
        ),
      ),
    );
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

  Widget _buildBulletPoint(String text, {List<String>? links}) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.h, right: 8.w),
            width: 4.w,
            height: 4.w,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: fontStyle.body.copyWith(
                  fontSize: 15.sp,
                  color: Colors.grey[700],
                ),
                children: _buildTextWithLinks(text, links),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTextWithLinks(String text, List<String>? links) {
    if (links == null || links.isEmpty) {
      return [TextSpan(text: text)];
    }

    List<TextSpan> spans = [];
    String remainingText = text;

    for (String link in links) {
      int index = remainingText.indexOf(link);
      if (index != -1) {
        if (index > 0) {
          spans.add(TextSpan(text: remainingText.substring(0, index)));
        }

        spans.add(
          TextSpan(
            text: link,
            style: TextStyle(
              color: Colors.grey[700],
              decoration: TextDecoration.underline,
            ),
          ),
        );

        remainingText = remainingText.substring(index + link.length);
      }
    }

    if (remainingText.isNotEmpty) {
      spans.add(TextSpan(text: remainingText));
    }

    return spans;
  }
}
