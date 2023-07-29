import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class CustomBackButton  extends StatelessWidget {
  const CustomBackButton ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.r,
      width: 34.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(
          color: AppColors.lightGrey,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
