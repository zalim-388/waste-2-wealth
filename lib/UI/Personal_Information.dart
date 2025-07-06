import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';


class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: Text(
          "Personal Information",
          style: fontStyle.bold.copyWith(fontSize: 16),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 99.h,
                  width: 98.w,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    "assets/images/avatar_multi_variants.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 59,
                  child: SvgPicture.asset("assets/icons/7710760_1.svg"),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Container(
              height: 48.h,
              width: 348.w,
              decoration: BoxDecoration(
                color: Appcolor.Containercolor,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                "View Profile",
                style: fontStyle.body.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 8.h),
            _PersonalInfo(title: "First Name", hinttext: "Albert"),
            SizedBox(height: 6.h),
            _PersonalInfo(title: "Last Name", hinttext: "Albert"),
            SizedBox(height: 6.h),
            _PersonalInfo(title: "Phone No", hinttext: "+91 9741464306 "),
            SizedBox(height: 6.h),
            _PersonalInfo(title: "Email", hinttext: "kbharghav@gmail.com"),
            SizedBox(height: 6.h),
            _PersonalInfo(
              title: "Address",
              hinttext: " Geo Location",
              svg: "assets/icons/Vector (2).svg",
            ),
            SizedBox(height: 6.h),
            _PersonalInfo(
              title: "Aadhar",
              hinttext: "6XXX XXXX XX34",
              svg: 'assets/icons/India Flag 5.svg',
            ),
            SizedBox(height: 6.h),
            _PersonalInfo(
              title: "PAN",
              hinttext: "MXXX XXXX XX34",
              svg: "assets/icons/India Flag 5.svg",
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ),
    );
  }
}

Widget _PersonalInfo({
  required String title,
  required String hinttext,
  String? svg,

  VoidCallback? onTap,
}) {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(title, style: fontStyle.body.copyWith(fontSize: 14)),
      ),

      Container(
        height: 48.h,
        width: 348.w,
        decoration: BoxDecoration(
          color: Appcolor.Containercolor,

          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (svg != null) ...[
              svg.endsWith(".svg")
                  ? SvgPicture.asset(svg, height: 15.h, width: 20.w)
                  : Image.asset(svg, height: 15.h, width: 20.w),
            ],

            Expanded(
              child: Text(
                hinttext,
                style: fontStyle.body.copyWith(fontSize: 16),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: onTap,
              child: SvgPicture.asset(
                "assets/icons/Vector (3).svg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
