import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/Createyouraccount.dart';
import 'package:waste_management/UI/Forget_password.dart';
import 'package:waste_management/UI/Signup_page.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              SizedBox(height: 190.h),

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

              SizedBox(height: 28.h),
              Text("Log in", style: fontStyle.heading),

              SizedBox(height: 8.h),
              Text(
                "Welcome back!",
                style: fontStyle.body.copyWith(fontSize: 18),
              ),

              SizedBox(height: 40.h),
              _TextField(hint: "Mobile Number"),
              SizedBox(height: 8.h),
              _TextField(hint: "password", icon: Icons.visibility),
              SizedBox(height: 13.h),
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: fontStyle.body.copyWith(fontSize: 13),
                  ),
                ),
              ),

              SizedBox(height: 38.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Createyouraccount(),
                    ),
                  );
                },
                child: Container(
                  height: 48.h,
                  width: 346.w,
                  decoration: BoxDecoration(
                    color: Appcolor.primaryColor,

                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Log in",
                    style: fontStyle.body.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.only(left: 100),
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
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
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
