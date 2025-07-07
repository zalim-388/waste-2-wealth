import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waste_management/UI/onbording.dart';
import 'package:waste_management/Utils/Appcolors.dart';

import 'package:waste_management/Utils/font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onbording()),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 392.h),
          Row(
            children: [
              Spacer(),
              Container(
                height: 59.h,
                width: 59.w,
                decoration: BoxDecoration(color: Appcolor.primaryColor),
                child: SvgPicture.asset(
                  "assets/icons/Group 12599.svg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 7.w),
              Text(
                "Waste 2 wealth",
                style: fontStyle.heading.copyWith(color: Colors.green),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}









// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:waste_management/UI/onbording.dart';
// import 'package:waste_management/Utils/Appcolors.dart';
// import 'package:waste_management/Utils/font_style.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen>
//     with TickerProviderStateMixin {
//   late AnimationController _containerController;
//   late AnimationController _wController;
//   late AnimationController _textController;

//   late Animation<double> _containerScaleAnimation;
//   late Animation<double> _wScaleAnimation;
//   late Animation<double> _textSlideAnimation;
//   late Animation<double> _textOpacityAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Container animation controller
//     _containerController = AnimationController(
//       duration: Duration(milliseconds: 800),
//       vsync: this,
//     );

//     // W letter animation controller
//     _wController = AnimationController(
//       duration: Duration(milliseconds: 1000),
//       vsync: this,
//     );

//     // Text animation controller
//     _textController = AnimationController(
//       duration: Duration(milliseconds: 800),
//       vsync: this,
//     );

//     // Container scale animation
//     _containerScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _containerController, curve: Curves.elasticOut),
//     );

//     // W letter scale animation
//     _wScaleAnimation = Tween<double>(
//       begin: 0.5,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _wController, curve: Curves.bounceOut));

//     // Text slide animation
//     _textSlideAnimation = Tween<double>(begin: 100.0, end: 0.0).animate(
//       CurvedAnimation(parent: _textController, curve: Curves.easeOutCubic),
//     );

//     // Text opacity animation
//     _textOpacityAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _textController, curve: Curves.easeIn));

//     // Start animations sequence
//     _startAnimations();

//     // Navigate to next screen after all animations
//     Timer(
//       Duration(seconds: 4),
//       () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => Onbording()),
//       ),
//     );
//   }

//   void _startAnimations() async {
//     // Start container animation
//     await _containerController.forward();

//     // Start W letter animation with slight delay
//     await Future.delayed(Duration(milliseconds: 200));
//     _wController.forward();

//     // Start text animation
//     await Future.delayed(Duration(milliseconds: 400));
//     _textController.forward();
//   }

//   @override
//   void dispose() {
//     _containerController.dispose();
//     _wController.dispose();
//     _textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 392.h),
//           Row(
//             children: [
//               Spacer(),
//               // Animated Container with W letter
//               AnimatedBuilder(
//                 animation: _containerController,
//                 builder: (context, child) {
//                   return Transform.scale(
//                     scale: _containerScaleAnimation.value,
//                     child: Container(
//                       height: 59.h,
//                       width: 59.w,
//                       decoration: BoxDecoration(
//                         color: Appcolor.primaryColor,
//                         borderRadius: BorderRadius.circular(8.r),
//                       ),
//                       child: AnimatedBuilder(
//                         animation: _wController,
//                         builder: (context, child) {
//                           return Transform.scale(
//                             scale: _wScaleAnimation.value,
//                             child: SvgPicture.asset(
//                               "assets/icons/Group 12599.svg",
//                               fit: BoxFit.cover,
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               SizedBox(width: 7.w),
//               // Animated Text
//               AnimatedBuilder(
//                 animation: _textController,
//                 builder: (context, child) {
//                   return Transform.translate(
//                     offset: Offset(_textSlideAnimation.value, 0),
//                     child: Opacity(
//                       opacity: _textOpacityAnimation.value,
//                       child: Text(
//                         "Waste 2 wealth",
//                         style: fontStyle.heading.copyWith(color: Colors.green),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//               Spacer(),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }