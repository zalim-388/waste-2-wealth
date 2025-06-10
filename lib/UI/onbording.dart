import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waste_management/UI/Signup_page.dart';
import 'package:waste_management/UI/choose_language.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _Splash2State();
}

class _Splash2State extends State<Onbording> {
  bool showLanguageModal = true;

  void initState() {
    super.initState();
    languageprefs();
  }

  Future<void> languageprefs() async {
    final prefs = await SharedPreferences.getInstance();
    final showmodel = prefs.getBool('showLanguageModal') ?? true;

    setState(() {
      showLanguageModal = showmodel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                SizedBox(height: 67.h),

                Container(
                  height: 38.h,
                  width: 176.w,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade100, width: 1),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Container(
                        height: 23.h,
                        width: 23.w,

                        child: SvgPicture.asset(
                          "assets/icons/Frame 1.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7.w),
                      Text(
                        "Waste 2 wealth",
                        style: fontStyle.heading.copyWith(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                SvgPicture.asset("assets/images/Frame.svg", fit: BoxFit.cover),

                // Image.asset("assets/images/Group 12573.png",),
                SizedBox(height: 33.h),
                Text(
                  "  Save Earth by\nWaste Recycling",
                  style: fontStyle.heading.copyWith(fontSize: 26),
                ),
                SizedBox(height: 16.h),
                Text(
                  "  Dispose the recycleble waste environment\nfriendly and earn on it by contributing to the \n                            sustainability",
                  style: fontStyle.body,
                ),
                SizedBox(height: 31.h),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
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
                      "Get Start",
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
          if (showLanguageModal)
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white.withOpacity(0.85),
                alignment: Alignment.center,

                child: Container(
                  height: 159.h,
                  width: 256.w,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 16.h),
                        Text(
                          "Your current language is ",
                          style: fontStyle.body.copyWith(color: Colors.black),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          "മലയാളം",
                          style: fontStyle.body.copyWith(
                            fontSize: 15,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),

                        SizedBox(height: 56.h),

                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showLanguageModal = false;
                                  });
                                },
                                child: Container(
                                  height: 21.h,
                                  width: 64.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3),
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Skip",
                                    style: fontStyle.body.copyWith(
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 84.w),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ChooseLanguage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 21.h,
                                  width: 64.h,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Change",
                                    style: fontStyle.body.copyWith(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
