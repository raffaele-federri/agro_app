import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryTextStyle extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const PrimaryTextStyle(
      {super.key, required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: GoogleFonts.lato(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
        letterSpacing: 0.001,
        color: color ?? const Color(0xff00416A),
      ),
    );
  }
}
