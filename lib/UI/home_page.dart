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
    {"name": "Plastic", "image": "assets/icons/plastic (1).png"},
    {"name": "Food", "image": "assets/icons/food-waste.png"},
    {"name": "Eee", "image": "assets/icons/electronic-waste 1.png"},
    {"name": "Metals", "image": "assets/icons/waste.png"},
    {"name": "Pepper", "image": "assets/icons/Group 12574.png"},
    {"name": "Rubber", "image": "assets/icons/rubber.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.72.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.h),
            AppBar(
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
                  icon: Icon(
                    Icons.grid_view_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                SizedBox(width: 5.w),
                CircleAvatar(
                  backgroundColor: const Color(0xFF4D4D4D),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10.w),
              ],
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: fontStyle.body.copyWith(color: Colors.black),
                ),
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
              ],
            ),

            SizedBox(height: 16.h),

            SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder: (context, index) {
                  final item = Categories[index];
                  return Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Column(
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                item["image"],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          item["name"],
                          style: fontStyle.body.copyWith(
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Available in your location",
              style: fontStyle.body.copyWith(color: Colors.black),
            ),

            SizedBox(height: 16.h),
            Container(
              height: 186.h,
              width: 165.w,
              decoration: BoxDecoration(
                color: Appcolor.border,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8),
                    ),
                    child: Image.asset(
                      "assets/images/product_image.png",
                      fit: BoxFit.cover,
                      height: 65.h,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h),
                        Text(
                          "Newspaper",
                          style: fontStyle.body.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          "18.5 Kg",
                          style: fontStyle.body.copyWith(fontSize: 10),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "in 8 Km from You",
                          style: fontStyle.bold.copyWith(
                            color: Appcolor.primaryColor,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          "₹10 per Kg",
                          style: fontStyle.body.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
