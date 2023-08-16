import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class TitleInManuals extends StatelessWidget {
  final String title;
  const TitleInManuals({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(100),
      ),
      child:  CustomText(
        text: title,
        size: 8,
        weight: FontWeight.w700,
        color: AppColors.primaryBlue,
      ),
    );
  }
}
