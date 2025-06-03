import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waste_management/Utils/Appcolors.dart';

class fontStyle {
  static TextStyle heading = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle bold = GoogleFonts.poppins(fontWeight: FontWeight.bold);
  static TextStyle body = GoogleFonts.poppins(
    fontSize: 18,
    color: Appcolor.textcolor,
  );
}
