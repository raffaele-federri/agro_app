import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextStyle extends StatelessWidget {
  final String text;
  final double size;
  final Color? color;
  final FontWeight? weight;
  final int? maxLines;

  const PrimaryTextStyle(
      {super.key,
      required this.text,
     required this.size,
      this.color,
      this.weight,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.lato(
        fontSize: size.r,
        fontWeight: weight ?? FontWeight.normal,
        letterSpacing: 0.001,
        color: color ?? const Color(0xff00416A),
      ),
    );
  }
}
