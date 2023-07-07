// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
