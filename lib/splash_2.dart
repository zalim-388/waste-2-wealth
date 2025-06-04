import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 20.h),

          Container(
            height: 38.h,
            width: 176.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Color(000000), width: 1),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Spacer(),
                Container(
                  height: 23.h,
                  width: 23.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/Frame 1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Text(
                  "Waste 2 wealth",
                  style: GoogleFonts.poppins(
                    color: Colors.green,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),

          Image.asset("assets/images/Group 12573.png", fit: BoxFit.cover),
          Text("Save Earth byWaste Recycling"),
          Text(
            "Dispose the recycleble waste environment friendly and earn on it by contributing to the sustainability",
          ),

          Container(
            height: 52.h,
            width: 3.w,
            decoration: BoxDecoration(color: Colors.green),
            alignment: Alignment.center,
            child: Text("Get Start"),
          ),
        ],
      ),
    );
  }
}
 // AboutDialog(
          //   children: [
          //     Column(
          //       children: [
          //         SizedBox(height: 16.h),
          //         Text(
          //           "Your current language is ",
          //           style: GoogleFonts.poppins(fontSize: 15),
          //         ),
          //         SizedBox(height: 16.h),
          //         Text(
          //           "മലയാളം",
          //           style: GoogleFonts.poppins(
          //             fontSize: 15,
          //             color: Colors.deepPurpleAccent,
          //           ),
          //         ),
          //         SizedBox(height: 56.h),
          
          //         Row(
          //           children: [
          //             Container(
          //               height: 21.h,
          //               width: 64.h,
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 borderRadius: BorderRadius.circular(3),
          //                 border: Border.all(color: Colors.green, width: 1),
          //               ),
          //               child: Text(
          //                 "Skip",
          //                 style: GoogleFonts.poppins(fontSize: 10),
          //               ),
          //             ),
          //             SizedBox(width: 17.w),
          //             Container(
          //               height: 21.h,
          //               width: 64.h,
          //               decoration: BoxDecoration(
          //                 color: Colors.green,
          //                 borderRadius: BorderRadius.circular(3),
          //               ),
          //               child: Text(
          //                 "Change",
          //                 style: GoogleFonts.poppins(
          //                   fontSize: 10,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
