import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPoppinsText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const CustomPoppinsText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}