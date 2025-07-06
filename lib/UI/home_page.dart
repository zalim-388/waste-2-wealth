import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waste_management/UI/profile.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> Categories = [
    {"name": "Plastic", "image": "assets/icons/plastic (1).svg"},
    {"name": "Food", "image": "assets/icons/food-waste.svg"},
    {"name": "Eee", "image": "assets/icons/electronic-waste 1.svg"},
    {"name": "Metals", "image": "assets/icons/waste.svg"},
    {"name": "Pepper", "image": "assets/icons/paper-bin 1.svg"},
    {"name": "Rubber", "image": "assets/icons/rubber.svg"},
  ];

  List<Map<String, dynamic>> items = [
    {
      "name": "News paper",
      "weight": "18.5 Kg",
      "price": "₹10 per Kg",
      "distance": "8 Km from You",
      "image": "assets/images/Product Image copy.svg",
    },
    {
      "name": "Magazines",
      "weight": "4 Kg",
      "price": "₹750 1 piece",
      "distance": "5 Km from You",
      "image": "assets/images/image 14.svg",
    },
    {
      "name": "Cartoon",
      "weight": "22 Kg",
      "price": "₹15 per Kg",
      "distance": "12 Km from You",
      "image": "assets/images/image.svg",
    },
    {
      "name": "Tyer",
      "weight": "29 Kg",
      "price": "₹10 per Kg",
      "distance": "3 Km from You",
      "image": "assets/images/image (1).svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.72.w),
        child: SingleChildScrollView(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
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
                          prefixIcon: Icon(
                            Icons.search,
                            color: Appcolor.border,
                          ),
                          hintText: "What to Dispose?",
                          hintStyle: fontStyle.body.copyWith(fontSize: 14.sp),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                          ),
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
                    child: SvgPicture.asset(
                      "assets/icons/filter.svg",
                      height: 27.h,
                    ),
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
                                child: SvgPicture.asset(
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
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 8.w,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    height: 186.h,
                    // width: 165.w,
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
                          child:
                              item["image"].isNotEmpty
                                  ? SvgPicture.asset(
                                    item["image"],
                                    fit: BoxFit.cover,
                                    height: 65.h,
                                    width: double.infinity,
                                  )
                                  : Container(
                                    height: 65.h,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                    child: Icon(
                                      Icons.image_not_supported,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8.h),
                              Text(
                                item["name"],
                                style: fontStyle.body.copyWith(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                item["weight"],
                                style: fontStyle.body.copyWith(fontSize: 10),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                item["distance"],
                                style: fontStyle.bold.copyWith(
                                  color: Appcolor.primaryColor,
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                item["price"],
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
