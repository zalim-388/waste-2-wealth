import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/Personal_Information.dart';
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 54.h),
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
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/Group.svg", fit: BoxFit.cover),
                Text(
                  "200 Credits",
                  style: fontStyle.body.copyWith(fontSize: 14),
                ),
              ],
            ),
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
                  svg: "assets/icons/Vector (1) copy.svg",
                  title: "Personal Information",
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonalInformation(),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 67),
                  child: Divider(),
                ),
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
            _profileitems(
              svg: "assets/icons/Group 20.svg",
              title: "Referrals & Credits",
              ontap: () {},
            ),
          ),
          SizedBox(height: 3.h),
          containers(
            _profileitems(
              svg: "assets/icons/Group 21.svg",
              title: "Support",
              ontap: () {},
            ),
          ),
          SizedBox(height: 3.h),
          containers(
            _profileitems(
              svg: "assets/icons/Group 22.svg",
              title: "Legal",
              ontap: () {},
            ),
          ),
          SizedBox(height: 3.h),
          containers(
            _profileitems(
              svg: "assets/icons/image 4.svg",
              title: "FAQ",
              ontap: () {},
            ),
          ),
          SizedBox(height: 3.h),
          containers(
            _profileitems(
              svg: "assets/icons/Group 23.svg",
              title: "Logout",
              ontap: () {},
            ),
          ),
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
    contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
    leading: SizedBox(
      width: 24.w,
      child:
          svg != null
              ? Image.asset(svg, height: 14.h, width: 14.w, fit: BoxFit.contain)
              : Icon(icon, color: Colors.black, size: 20.sp),
    ),
    title: Text(
      title,
      style: fontStyle.bold.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 14.sp,
      ),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios,
      color: Color(0xFFAFAFAF),
      size: 16.sp,
    ),
    onTap: ontap,
  );
}
