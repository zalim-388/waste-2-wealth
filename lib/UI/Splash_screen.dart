import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}





// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   bool showLanguageModal = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // Main content
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24.0),
//               child: Column(
//                 children: [
//                   // Status bar space
//                   SizedBox(height: 20),

//                   // Logo and app name
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 32,
//                         height: 32,
//                         decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Center(
//                           child: Text(
//                             'W',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         'Waste 2 wealth',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.green[700],
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: 60),

//                   // Trash bin illustration
//                   Container(
//                     height: 200,
//                     child: Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         // Trash bin
//                         Container(
//                           width: 160,
//                           height: 180,
//                           decoration: BoxDecoration(
//                             color: Colors.green[300],
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(20),
//                               bottomRight: Radius.circular(20),
//                             ),
//                           ),
//                           child: Column(
//                             children: [
//                               // Bin lid
//                               Container(
//                                 width: 180,
//                                 height: 20,
//                                 decoration: BoxDecoration(
//                                   color: Colors.green[400],
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               // Bin body with vertical lines
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Colors.green[300],
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: List.generate(
//                                       6,
//                                       (index) => Container(
//                                         width: 2,
//                                         height: double.infinity,
//                                         color: Colors.green[400],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         // Garbage bags
//                         Positioned(
//                           top: 10,
//                           child: Row(
//                             children: [
//                               // Gray bag
//                               Container(
//                                 width: 50,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[600],
//                                   borderRadius: BorderRadius.circular(25),
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               // Another gray bag
//                               Container(
//                                 width: 45,
//                                 height: 55,
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[500],
//                                   borderRadius: BorderRadius.circular(22),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         // Pink item
//                         Positioned(
//                           top: 30,
//                           right: 40,
//                           child: Container(
//                             width: 20,
//                             height: 20,
//                             decoration: BoxDecoration(
//                               color: Colors.pink[300],
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         // Recycling symbol on bin
//                         Positioned(
//                           bottom: 40,
//                           left: 20,
//                           child: Icon(
//                             Icons.recycling,
//                             color: Colors.white,
//                             size: 24,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   Spacer(),

//                   // Main heading
//                   Text(
//                     'Save Earth by\nWaste Recycling',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.grey[600],
//                       height: 1.2,
//                     ),
//                   ),

//                   SizedBox(height: 16),

//                   // Description
//                   Text(
//                     'Dispose the recyclable waste environment friendly and earn on it by contributing to the sustainability',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey[500],
//                       height: 1.4,
//                     ),
//                   ),

//                   SizedBox(height: 40),

//                   // Get start button
//                   Container(
//                     width: double.infinity,
//                     height: 56,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Navigate to next screen
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.green[400],
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(28),
//                         ),
//                         elevation: 0,
//                       ),
//                       child: Text(
//                         'Get start',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),

//                   SizedBox(height: 40),
//                 ],
//               ),
//             ),

//             // Language selection modal
//             if (showLanguageModal)
//               Container(
//                 color: Colors.black.withOpacity(0.3),
//                 child: Center(
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 40),
//                     padding: EdgeInsets.all(24),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.1),
//                           blurRadius: 20,
//                           offset: Offset(0, 10),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Text(
//                           'Your current language is',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           'മലയാളം',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.purple[400],
//                           ),
//                         ),
//                         SizedBox(height: 24),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: OutlinedButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     showLanguageModal = false;
//                                   });
//                                 },
//                                 style: OutlinedButton.styleFrom(
//                                   side: BorderSide(color: Colors.grey[300]!),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   padding: EdgeInsets.symmetric(vertical: 12),
//                                 ),
//                                 child: Text(
//                                   'Skip',
//                                   style: TextStyle(
//                                     color: Colors.grey[600],
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 12),
//                             Expanded(
//                               child: ElevatedButton(
//                                 onPressed: () {
//                                   // Handle language change
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Colors.green[400],
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8),
//                                   ),
//                                   padding: EdgeInsets.symmetric(vertical: 12),
//                                   elevation: 0,
//                                 ),
//                                 child: Text(
//                                   'Change',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
