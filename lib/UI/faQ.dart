import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waste_management/Utils/Appcolors.dart';
import 'package:waste_management/Utils/font_style.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final List<Map<String, String>> faqList = [
    {
      "question": "What is Viral Pitch?",
      "answer":
          "At Viral Pitch we expect at a day's start is you, better and happier than yesterday. "
          "We have got you covered—share your concern or check our frequently asked questions.",
    },
    {
      "question": "How to apply for a campaign?",
      "answer":
          "You can apply for a campaign by navigating to the campaign section and clicking on apply.",
    },
    {
      "question": "How to know status of a campaign?",
      "answer":
          "You can check your dashboard to track the current status of your campaign applications.",
    },
  ];

  int? expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'FAQ',
          style: fontStyle.heading.copyWith(
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
            SizedBox(height: 37.h),
            Text(
              "We’re here to help you with\nanything and everything on ViralPitch",
              style: fontStyle.heading.copyWith(fontSize: 16.sp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 13.h),
            SizedBox(
              height: 41.h,
              width: 350.w,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color(0xFF272727),
                  ),
                  hintText: "Search Help",
                  hintStyle: fontStyle.body.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Appcolor.Containercolor,
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              "At Viral Pitch we expect at a day’s start is you, better and happier than yesterday. We have got you covered—share your concern or check our frequently asked questions listed below.",
              style: fontStyle.body.copyWith(fontSize: 14),
            ),
            SizedBox(height: 23.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("FAQ", style: fontStyle.bold.copyWith(fontSize: 16)),
            ),
            SizedBox(height: 21.h),
            Divider(color: Color(0xFFD4D4D4)),
            Expanded(
              child: ListView.separated(
                itemCount: faqList.length,
                separatorBuilder:
                    (_, __) =>
                        Divider(height: 43.h, color: const Color(0xFFD4D4D4)),
                itemBuilder: (context, index) {
                  final faq = faqList[index];
                  final isExpanded = expandedIndex == index;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            expandedIndex = isExpanded ? null : index;
                          });
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                faq["question"] ?? "",
                                style: fontStyle.body.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Icon(
                              isExpanded ? Icons.close : Icons.add,
                              size: 20.sp,
                            ),
                            Divider(color: Color(0xFFD4D4D4)),
                          ],
                        ),
                      ),

                      if (isExpanded)
                        Padding(
                          padding: EdgeInsets.only(top: 8.h),
                          child: Text(
                            faq["answer"] ?? "",
                            style: fontStyle.body.copyWith(fontSize: 13.sp),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 26.h),
            Text(
              "Still stuck? Help us a mail away",
              style: fontStyle.heading.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 44.h),
            GestureDetector(
              onTap: () {
                // Replace with actual navigation or action
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Send message tapped")),
                );
              },
              child: Container(
                height: 57.h,
                width: 342.w,
                decoration: BoxDecoration(
                  color: Appcolor.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Send a message",
                  style: fontStyle.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

// Widget faq() {
//   return Column(
//     children: [
//       Divider(color: Color(0xFFD4D4D4)),
//       SizedBox(height: 13.h),

//       SizedBox(height: 12.h),
//     ],
//   );
// }
