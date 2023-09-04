import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/default_text_style.dart';

class GenderWidget extends StatelessWidget {
  final String text;
  final String asset;
  final Color color;

  const GenderWidget({
    super.key,
    required this.text,
    required this.asset,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      width: 132.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: color,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimaryTextStyle(
            text: text,
            size: 24,
            weight: FontWeight.w700,
          ),
          SizedBox(height: 14.h),
          Image.asset(asset, color: color)
        ],
      ),
    );
  }
}
