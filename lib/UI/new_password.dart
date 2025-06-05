import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/successful.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
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
          "Set a new password",
          style: fontStyle.heading.copyWith(fontSize: 20),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Text(
              "Create a new password. Ensure it differs \nfrom previous ones for security",
              style: fontStyle.body.copyWith(fontSize: 16),
            ),
            SizedBox(height: 15.h),
            _TextField(
              hint: "Enter your new password",
              title: "Password",

              icon: isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              onTap: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),

            _TextField(
              hint: "Re-enter password",
              title: "Confirm Password",

              icon:
                  isConfirmPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
              onTap: () {
                setState(() {
                  isConfirmPasswordVisible = !isConfirmPasswordVisible;
                });
              },
            ),

            SizedBox(height: 43.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Successful()),
                );
              },
              child: Container(
                height: 56.h,
                width: 346.w,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(  
                  "Update Password",
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
    );
  }
}

Widget _TextField({
  required String hint,
  IconData? icon,

  TextInputType keybordtype = TextInputType.text,
  required String title,
  VoidCallback? onTap,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: fontStyle.body.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 8.h),

      SizedBox(
        height: 56.h,
        width: 346.w,
        child: TextField(
          keyboardType: keybordtype,
          obscureText: true,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: fontStyle.body.copyWith(fontSize: 16),
            fillColor: Colors.white,
            filled: true,
            suffixIcon:
                icon != null
                    ? IconButton(icon: Icon(icon, size: 18), onPressed: onTap)
                    : null,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBBBBB)),
              borderRadius: BorderRadius.circular(9),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBBBBBB)),
              borderRadius: BorderRadius.circular(9),
            ),
          ),
        ),
      ),
    ],
  );
}
