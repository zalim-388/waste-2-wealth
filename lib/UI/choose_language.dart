import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/font_style.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  final List<Map<String, String>> language = [
    {"name": "English", "image": ""},
    {"name": "हिंदी - Hindi ", "image": ""},
    {"name": "తెలుగు - Telugu ", "image": ""},
    {"name": "ಕನ್ನಡ - Kannada ", "image": ""},
    {"name": "தமிழ் - Tamil ", "image": ""},
    {"name": "বাংলা - Bengali ", "image": ""},
  ];

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
          "Choose your language",
          style: fontStyle.heading.copyWith(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 45.h),

          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Column(children: []);
            },
          ),
        ],
      ),
    );
  }
}
