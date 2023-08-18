import 'package:agro_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/default_text_style.dart';

class TextFieldTitle extends StatelessWidget {
  final String title;
  final bool? inactive;
  const TextFieldTitle({super.key, required this.title, this.inactive});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PrimaryTextStyle(
          text: title,
          size: 12,
          weight: FontWeight.w700,
          color: inactive != null && inactive! ? AppColors.textGrey : AppColors.secondaryBlue,
        )
      ],
    );
  }
}
