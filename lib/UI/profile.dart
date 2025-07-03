import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/Utils/font_style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(onPressed: () => Navigator.pop(context)),
        title: Text("Profile", style: fontStyle.bold.copyWith(fontSize: 16)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.h),
          CircleAvatar(
            radius: 30,

            child: Icon(Icons.person, color: Colors.white),
          ),
          SizedBox(height: 14.h),
          Text(
            "Albert Flores",
            style: fontStyle.heading.copyWith(fontSize: 18),
          ),

          SizedBox(height: 5.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Group.svg", fit: BoxFit.cover),
              Text("200 Credits", style: fontStyle.body.copyWith(fontSize: 14)),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              child: Text(
                'PERSONALIZE',
                style: fontStyle.body.copyWith(fontSize: 12.sp),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Container(
            width: 346.w,

            decoration: BoxDecoration(
              color: Color(0xFFF3F2F7),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                _profileitems(
                  icon: Icons.person_pin_circle,
                  title: "Personal Information",
                  ontap: () {},
                ),
                Divider(),
                _profileitems(
                  icon: Icons.settings,
                  title: "Setting",
                  ontap: () {},
                ),
              ],
            ),
          ),

          SizedBox(height: 13.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              child: Text(
                'PERSONALIZE',
                style: fontStyle.body.copyWith(fontSize: 12.sp),
              ),
            ),
          ),
          containers(
            _profileitems(svg: "", title: "Referrals & Credits", ontap: () {}),
          ),
          SizedBox(height: 3.h),
          containers(_profileitems(svg: "", title: "Support", ontap: () {})),
          SizedBox(height: 3.h),
          containers(_profileitems(svg: "", title: "Legal", ontap: () {})),
          SizedBox(height: 3.h),
          containers(_profileitems(svg: "", title: "FAQ", ontap: () {})),
          SizedBox(height: 3.h),
          containers(_profileitems(svg: "", title: "Logout", ontap: () {})),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}

Widget containers(dynamic profileitems) {
  return Container(
    width: 346.w,
    height: 48.h,
    decoration: BoxDecoration(
      color: Color(0xFFF3F2F7),
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: profileitems,
  );
}

Widget _profileitems({
  IconData? icon,
  required String title,
  VoidCallback? ontap,
  String? svg,
}) {
  return ListTile(
    leading:
        svg != null
            ? Image.asset(svg, height: 14.h, width: 14.w, fit: BoxFit.cover)
            : Icon(icon, color: Colors.black),
    title: Text(
      title,
      style: fontStyle.bold.copyWith(fontWeight: FontWeight.w500, fontSize: 14),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios,
      color: Color(0xFFAFAFAF),
      size: 16.sp,
    ),
    onTap: ontap,
  );
}
