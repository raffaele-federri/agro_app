import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class InfoBox extends StatelessWidget {
  final String? title;
  final double? width;
  final double? height;
  final Widget? child;
  final Color? color;
  final MainAxisAlignment? mainAxisAlignment;

  const InfoBox({
    super.key,
    this.title,
    this.width,
    this.child,
    this.height,
    this.color, this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          width: 1,
          color: color ?? AppColors.lightGrey,
        ),
      ),
      // height: 0.053475936.sh,
      height: height ?? 48.r,
      width: width?.r ,
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: child ??
                    CustomText(
                      text: title ?? '',
                      size: 12,
                      color: AppColors.textGrey,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
