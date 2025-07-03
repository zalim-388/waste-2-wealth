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
  List<Map<String, dynamic>> chatList = [
    {
      "name": "James",
      "message": "HALLO",
      "time": "11.45 am",
      "count": 1,
      "image": "assets/images/image 8.png",
    },
    {
      "name": "Akash",
      "message": "Is this still available?",
      "time": "11.33 am",
      "count": 1,
      "image": "assets/images/image.png",
    },
    {
      "name": "Waste 2 wealth",
      "message": "Notification",
      "time": "11:10 am",
      "count": 0,
      "image": "assets/images/Mask group.png",
    },
    {
      "name": "Ishan",
      "message": "Seen 46m ago",
      "time": "10:50 am",
      "count": 0,
      "image": "assets/images/image (1).png",
    },
    {
      "name": "Allu Arjun",
      "message": "Sent",
      "time": "9:00 am",
      "count": 0,
      "image": "assets/images/image (2).png",
    },
  ];

  List<Map<String, dynamic>> yesterday = [
    {
      "name": "Dhanush",
      "message": "Sent",
      "time": "11.33 pm",
      "count": 0,
      "image": "assets/images/image (6).png",
    },
    {
      "name": "Arjun",
      "message": "Sent",
      "time": "10:04 pm",
      "count": 0,
      "image": "assets/images/Vector (1).png",
    },
    {
      "name": "Akshay kumar",
      "message": "Sent",
      "time": "4.33 pm",
      "count": 0,
      "image": "assets/images/image (3).png",
    },
    {
      "name": "Dhanviin",
      "message": "Sent",
      "time": "3.41 pm",
      "count": 0,
      "image": "assets/images/image (4).png",
    },
    {
      "name": "Dhanvin",
      "message": "Sent",
      "time": "3.41 pm",
      "count": 0,
      "image": "assets/images/image (5).png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              SizedBox(height: 68.h),
              SizedBox(
                height: 26.h,
                width: 344.w,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    prefixStyle: GoogleFonts.poppins(color: Color(0xFF191919)),
                    hintText: "search",
                    hintStyle: fontStyle.body.copyWith(fontSize: 14.sp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Appcolor.border),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
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
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  labelStyle: fontStyle.heading.copyWith(fontSize: 14.sp),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: fontStyle.heading.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  indicator: BoxDecoration(
                    color: Appcolor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
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
              SizedBox(height: 10.h),
              SizedBox(
                height: 700.h,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 8.h,
                            ),
                            child: Text(
                              'Today',
                              style: fontStyle.body.copyWith(fontSize: 11.sp),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F2F7),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              children:
                                  chatList
                                      .map(
                                        (chat) => Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 8.h,
                                          ),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 24.r,
                                                backgroundImage: AssetImage(
                                                  chat["image"],
                                                ),
                                              ),
                                              SizedBox(width: 19.w),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      chat["name"],
                                                      style: fontStyle.heading
                                                          .copyWith(
                                                            fontSize: 14.sp,
                                                          ),
                                                    ),
                                                    Text(
                                                      chat["message"],
                                                      style: fontStyle.body
                                                          .copyWith(
                                                            fontSize: 11.sp,
                                                          ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  if (chat["count"] > 0)
                                                    Container(
                                                      padding: EdgeInsets.all(
                                                        5.r,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Text(
                                                        '${chat["count"]}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  Text(
                                                    chat["time"],
                                                    style: fontStyle.body
                                                        .copyWith(
                                                          color:
                                                              Appcolor
                                                                  .primaryColor,
                                                          fontSize: 10.sp,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                      .toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: 13.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 8.h,
                            ),
                            child: Text(
                              'Yesterday',
                              style: fontStyle.body.copyWith(fontSize: 11.sp),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF3F2F7),
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              children:
                                  yesterday
                                      .map(
                                        (day) => Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 8.h,
                                          ),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 24.r,
                                                backgroundImage: AssetImage(
                                                  day["image"],
                                                ),
                                              ),
                                              SizedBox(width: 19.w),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      day["name"],
                                                      style: fontStyle.heading
                                                          .copyWith(
                                                            fontSize: 14.sp,
                                                          ),
                                                    ),
                                                    Text(
                                                      day["message"],
                                                      style: fontStyle.body
                                                          .copyWith(
                                                            fontSize: 11.sp,
                                                          ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  if (day["count"] > 0)
                                                    Container(
                                                      padding: EdgeInsets.all(
                                                        5.r,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Text(
                                                        '${day["count"]}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                        ),
                                                      ),
                                                    ),
                                                  Text(
                                                    day["time"],
                                                    style: fontStyle.body
                                                        .copyWith(
                                                          color:
                                                              Appcolor
                                                                  .primaryColor,
                                                          fontSize: 10.sp,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                      .toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // "Unread" Tab
                    SizedBox(
                      height: 500.h,
                      child: Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 8.h,
                                ),
                                child: Text(
                                  'Today',
                                  style: fontStyle.body.copyWith(
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ),
                    // "Unanswered" Tab
                    SizedBox(
                      height: 500.h,
                      child: Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.w,
                                  vertical: 8.h,
                                ),
                                child: Text(
                                  'Today',
                                  style: fontStyle.body.copyWith(
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      ),
                    ),
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
