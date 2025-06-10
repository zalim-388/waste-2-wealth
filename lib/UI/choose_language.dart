import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waste_management/UI/onbording.dart';

import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int selectedindex = 0;
  final List<Map<String, String>> language = [
    {"name": "English", "image": ""},
    {"name": "हिंदी - Hindi ", "image": ""},
    {
      "name": "తెలుగు - Telugu ",
      "image": "assets/images/Isolation_Mode (1).svg",
    },
    {
      "name": "ಕನ್ನಡ - Kannada ",
      "image": "assets/images/Isolation_Mode (2).svg",
    },
    {"name": "தமிழ் - Tamil ", "image": "assets/images/Isolation_Mode (3).svg"},
    {"name": "বাংলা - Bengali ", "image": "assets/images/Isolation_Mode.svg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Onbording()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Choose your language",
          style: fontStyle.heading.copyWith(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            SizedBox(height: 45.h),

            Expanded(
              child: GridView.builder(
                itemCount: language.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  final lang = language[index];
                  final isSelected = selectedindex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },

                    child: Container(
                      height: 155.h,
                      width: 164,

                      decoration: BoxDecoration(
                        color:
                            isSelected ? Colors.green[100] : Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 14.h),
                          Text(
                            lang["name"] ?? "",
                            style: fontStyle.body.copyWith(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Container(
                              height: 104.h,
                              width: 174.w,
                              child: SvgPicture.asset(
                                lang["image"] ?? "",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 82.h),
            GestureDetector(
              onTap: () async {
                try {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool("showLanguageModal", false);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Onbording()),
                  );
                } catch (e) {
                  print("SharedPreferences error: $e");
                }
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
                  "Continue",
                  style: fontStyle.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
