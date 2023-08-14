import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int? size;
  final FontWeight? weight;
  final Color? color;

  const CustomText(
      {super.key, required this.text, this.size, this.weight, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: GoogleFonts.lato(
            fontSize: size?.h ?? 16,
            fontWeight: weight ?? FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
