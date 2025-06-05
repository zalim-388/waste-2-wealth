import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/Signup_page.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 164.h),
            Text("Enter OTP", style: fontStyle.heading.copyWith(fontSize: 20)),
            SizedBox(height: 44.h),
            Text.rich(
              TextSpan(
                text:
                    "Please enter the OTP sent to your registered phone number:",
                style: fontStyle.body.copyWith(fontSize: 14),

                children: [
                  TextSpan(
                    text: "XXXXXXX987",
                    style: fontStyle.body.copyWith(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 21.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) => _otpBox(context)),
            ),
            SizedBox(height: 21.h),

            GestureDetector(
              onTap: () {},
              child: Container(
                height: 48.h,
                width: 328.w,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "verify code",
                  style: fontStyle.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 44.h),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text.rich(
                TextSpan(
                  text: "Haven’t got the otp yet ?",
                  style: fontStyle.body.copyWith(fontSize: 13),
                  children: [
                    TextSpan(
                      text: "Resend opt",
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
    );
  }
}

Widget _otpBox(BuildContext context) {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  return StatefulBuilder(
    builder: (context, setState) {
      return Container(
        width: 42.w,
        height: 44.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color:
                controller.text.isNotEmpty
                    ? Colors.green
                    : Colors.grey.shade300,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          onChanged: (value) {
            setState(() {}); 
            if (value.length == 1) {
              focusNode.unfocus(); 
            }
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: controller.text.isNotEmpty ? Colors.green : Colors.black,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: "",
          ),
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
      );
    },
  );
}
