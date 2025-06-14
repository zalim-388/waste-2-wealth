import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/login_page.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 176.h),
              Container(
                height: 40.h,
                width: 48.w,

                child: SvgPicture.asset(
                  "assets/icons/Frame 1.svg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 36.h),
              Text(
                "Create your account",
                style: fontStyle.heading.copyWith(fontSize: 18),
              ),
              SizedBox(height: 9.h),
              _TextField(hint: "First name"),
              SizedBox(height: 18.h),
              _TextField(hint: "Last name"),
              SizedBox(height: 18.h),
              _TextField(hint: "Email or phone number"),
              SizedBox(height: 18.h),
              _TextField(
                hint: "Create password",
                icon: Icons.visibility_outlined,
              ),
              SizedBox(height: 18.h),
              _TextField(
                hint: "Confirm password",
                icon: Icons.visibility_outlined,
              ),

              SizedBox(height: 53.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
                    "Sign up",
                    style: fontStyle.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 84.h),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: fontStyle.body.copyWith(fontSize: 13),
                    children: [
                      TextSpan(
                        text: "Log In",
                        style: fontStyle.body.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
