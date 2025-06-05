import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/Signup_page.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 136.h),

                Container(
                  height: 40.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Frame 1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 18.h),
                Text("Forget Password ?", style: fontStyle.heading),

                SizedBox(height: 8.h),
                Text(
                  "No worry, we’ll you sent reset instructions",
                  style: fontStyle.body.copyWith(fontSize: 14),
                ),
                SizedBox(height: 93.h),

                TabBar(
                  indicatorColor: Colors.transparent,
                  labelColor: const Color(0xFF2DAF2F),
                  unselectedLabelColor: Colors.black,
                  labelStyle: fontStyle.body.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  tabs: [
                    Tab(text: 'Email'),
                    Container(height: 45, width: 1, color: Colors.grey),
                    Tab(text: 'Phone'),
                  ],
                ),

                SizedBox(
                  height: 500,
                  child: TabBarView(
                    children: [
                      _tabBody(context, "Email"),
                      _tabBody(context, "Phone"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _tabBody(BuildContext context, String hint) {
  return Column(
    children: [
      SizedBox(height: 41.h),
      _TextField(hint: hint),
      SizedBox(height: 29.h),
      Container(
        height: 52.h,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFFFC400),
          borderRadius: BorderRadius.circular(11),
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Image.asset("assets/icons/vector_copy.png", height: 24, width: 24),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "We're having trouble locating your ${hint.toLowerCase()}. Please resend the one you used during registration.",
                style: fontStyle.body.copyWith(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 58.h),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 52.h,
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
      SizedBox(height: 12.h),
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Text.rich(
          TextSpan(
            text: "Don’t have an account?",
            style: fontStyle.body.copyWith(fontSize: 13),
            children: [
              TextSpan(
                text: " Sign up",
                style: fontStyle.body.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _TextField({
  required String hint,
  IconData? icon,
  bool password = false,
  TextInputType keybordtype = TextInputType.text,
}) {
  return SizedBox(
    height: 50.h,
    width: 346.w,
    child: TextField(
      keyboardType: keybordtype,
      obscureText: password,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: fontStyle.body.copyWith(fontSize: 12),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: icon != null ? Icon(icon, size: 18) : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBBBBBB)),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFBBBBBB)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
