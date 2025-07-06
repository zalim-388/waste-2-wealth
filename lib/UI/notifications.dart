import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Notifications',
            style: fontStyle.heading.copyWith(fontSize: 16.sp),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 31.h),

              Container(
                height: 37.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Appcolor.Containercolor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: TabBar(
                  indicatorColor: Colors.transparent,

                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
                  labelColor: Colors.black,
                  labelStyle: fontStyle.bold.copyWith(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),

                  tabs: [Tab(text: "Offers and Updates"), Tab(text: "Account")],
                ),
              ),

              SizedBox(height: 10.h),
              SizedBox(
                height: 700.h,
                child: TabBarView(
                  children: [
                    //Offers Tab Content
                    Column(
                      children: [
                        Container(
                          height: 66.h,
                          width: 345.w,
                          decoration: BoxDecoration(
                            color: Appcolor.Containercolor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            children: [
                              SizedBox(width: 8.w),
                              Text(
                                "Listing insights and rewards",
                                style: fontStyle.body.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Learn about best listing practices, and get access\nto exclusive listing perks. ",
                                style: fontStyle.body.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Recognition and achievements",
                          sutitle: "On: Push, Whatsapp and Email",
                          ontap: () {},
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Insights and tips",
                          sutitle: "On: Push, Whatsapp and Email",
                          ontap: () {},
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Pricing trends and suggestions",
                          sutitle: "On: Push, Whatsapp and Email",
                          ontap: () {},
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Listing perks",
                          sutitle: "On: Push, Whatsapp and Email",
                          ontap: () {},
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),

                    //Account Tab Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 8.w),
                        Text(
                          "Account activity and policies",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          "Confirm your collections and account activity, and\n learn about important Ecobin Policies. . ",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 18.h),
                        _notifcard(
                          title: "Account activity",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Listing activity",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Disposer policies",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Picker policies",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 10.h),
                        _notifcard(
                          title: "Recycler policies",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 27.h),
                        Divider(),
                        SizedBox(height: 22.h),
                        Text(
                          "Reminders",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: 4.h),
                        Text(
                          "Keep in touch with your pickers or\ndisposers or recyclers before and during the transaction.",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 17.h),
                        _notifcard(
                          title: "Reminders",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 15.h),
                        Divider(),
                        SizedBox(height: 19.h),
                        Text(
                          "Guest and Listing messages",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        SizedBox(height: 4.h),
                        Text(
                          "Keep in touch with your pickers or\ndisposers or recyclers before and during the transaction.",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 14.h),
                        _notifcard(
                          title: "Messages",
                          sutitle: "On: Push, Whatsapp and Email",
                        ),
                        SizedBox(height: 20.h),
                        SizedBox(height: 17.h),
                      ],
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

Widget _notifcard({
  required String title,
  required String sutitle,
  VoidCallback? ontap,
}) {
  return Container(
    height: 49.h,
    width: 345.w,
    decoration: BoxDecoration(
      color: Appcolor.Containercolor,
      borderRadius: BorderRadius.circular(8.r),
    ),
    child: Row(
      children: [
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: fontStyle.body.copyWith(fontSize: 12, color: Colors.black),
            ),
            SizedBox(height: 2.h),
            Text(
              sutitle,
              style: fontStyle.body.copyWith(fontSize: 10, color: Colors.black),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: ontap,
          icon: Icon(Icons.edit_outlined, color: Colors.black, size: 20.w),
        ),
      ],
    ),
  );
}
