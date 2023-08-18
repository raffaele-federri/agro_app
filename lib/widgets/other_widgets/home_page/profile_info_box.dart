import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class InfoBox extends StatelessWidget {
 final String? title;
 final double? width;
 final Widget? child;
  const InfoBox({super.key,  this.title, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          width: 1,
          color: AppColors.lightGrey,
        ),
      ),
      // height: 0.053475936.sh,
      height: 40.r,
      width: width?.r ?? double.infinity,
      child:  Row(
        children: [
        child ?? CustomText(
            text: title ?? '',
            size: 12,
          color: AppColors.textGrey,
          ),
        ],
      ),
    );
  }
}
