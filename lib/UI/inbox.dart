import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 68.h),
              SizedBox(
                height: 26.h,
                width: 344.w,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    prefixStyle: GoogleFonts.poppins(color: Color(191919)),
                    hintText: "search",
                    hintStyle: fontStyle.body.copyWith(fontSize: 14),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Appcolor.border),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Appcolor.border),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10.h),

              Container(
                height: 26.h,
                width: 297.w,
                decoration: BoxDecoration(
                  color: Color(0xFFF3F2F7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  labelStyle: fontStyle.heading.copyWith(fontSize: 14),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: fontStyle.heading.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),

                  indicator: BoxDecoration(
                    color: Appcolor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  indicatorPadding: EdgeInsets.zero,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Unread"),
                    Tab(text: "Unanswered"),
                  ],
                ),
              ),
              Text('Today', style: fontStyle.body.copyWith(fontSize: 11)),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F2F7),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),

                    Text("Unread"),
                    Text("Unanswered"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _chatlist({
  required String image,

  required String title,
  required String lastmessage,
}) {
  return Container(
    height: 58.h,
    width: double.infinity,
    child: Row(
      children: [
        CircleAvatar(radius: 18.5),
        SizedBox(width: 19.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: fontStyle.heading.copyWith(fontSize: 14)),
            Text(lastmessage, style: fontStyle.body.copyWith(fontSize: 10)),
          ],
        ),
        Spacer(),

        Column(
          children: [
            Stack(
              children: [
                Positioned(
                  right: 8,
                  top: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),

            Text(
              "11:33",
              style: fontStyle.body.copyWith(
                color: Appcolor.primaryColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
