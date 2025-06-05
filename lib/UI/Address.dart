import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/UI/bottomnav.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          "Address",
          style: fontStyle.body.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),

        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              _TextField(title: ""),
              SizedBox(height: 26.h),
              _TextField(title: "District"),
              SizedBox(height: 26.h),
              _TextField(title: "State"),
              SizedBox(height: 26.h),
              _TextField(title: "Street"),
              SizedBox(height: 26.h),
              _TextField(title: "Address"),
              SizedBox(height: 26.h),
              _TextField(title: "Building no, House no"),
              SizedBox(height: 26.h),
              _TextField(title: "Zip Code", keybordtype: TextInputType.number),
              SizedBox(height: 40.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bottomnav()),
                  );
                },
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
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _TextField({
  required String title,
  TextInputType keybordtype = TextInputType.text,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: fontStyle.body.copyWith(fontSize: 14)),
      SizedBox(height: 3.h),
      SizedBox(
        width: double.infinity,
        child: TextField(
          keyboardType: keybordtype,
          decoration: InputDecoration(
            fillColor: Colors.grey.shade100,
            filled: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 14.h,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    ],
  );
}
