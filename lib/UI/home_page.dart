import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> Categories = [
    {"name": "Plastic", "image": "assets/icons/plastic (1).png", "Items": []},
    {"name": "Food", "image": "assets/icons/food-waste.png", "Items": []},
    {
      "name": "Eee",
      "image": "assets/icons/electronic-waste 1.png",
      "Items": [],
    },
    {"name": "Metals", "image": "assets/icons/waste.png", "Items": []},
    {"name": "Pepper", "image": "assets/icons/Group 12574.png", "Items": []},
    {"name": "Rubber", "image": "assets/icons/rubber.png", "Items": []},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.black),
            SizedBox(width: 6.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kavumpuram",
                  style: fontStyle.body.copyWith(
                    fontSize: 12.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Melmuri, Malappuram",
                  style: fontStyle.body.copyWith(fontSize: 10.sp),
                ),
              ],
            ),
          ],
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.grid_view_sharp, color: Colors.black, size: 24),
          ),
          SizedBox(width: 5.w),
          CircleAvatar(
            backgroundColor: Color(0xFF4D4D4D),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.72.w),
        child: Column(
          children: [
            SizedBox(height: 25.h),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45.h,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Appcolor.border),
                        hintText: "What to Dispose?",
                        hintStyle: fontStyle.body.copyWith(fontSize: 14.sp),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.r),
                          borderSide: BorderSide(color: Appcolor.border),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.r),
                          borderSide: BorderSide(color: Appcolor.border),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: Appcolor.border,
                  child: Image.asset("assets/icons/filter.png", height: 27.h),
                ),
              ],
            ),

            SizedBox(height: 28.h),

            Row(
              children: [
                Text(
                  "Categories",
                  style: fontStyle.body.copyWith(color: Colors.black),
                ),
                SizedBox(width: 170.w),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: fontStyle.body.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 380.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Categories.length,
                    itemBuilder: (context, index) {
                      final item = Categories[index];
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 48.h,
                              width: 48.w,
                              decoration: BoxDecoration(
                                color: Appcolor.border,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                item["image"],
                                fit: BoxFit.cover,
                                height: 30,
                              ),
                            ),
                          ),
                          Text(
                            item["name"],
                            style: fontStyle.body.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(height: 16.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
