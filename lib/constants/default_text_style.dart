import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  const DefaultText(
      {super.key, required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.normal,
        color: color ?? const Color(0xff00416A),
      ),
    );
  }
}
