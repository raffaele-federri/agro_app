import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class TitleRow extends StatelessWidget {
 final String asset;
 final String title;
 final bool see;
 final void Function()? onPressed;
  const TitleRow({super.key, required this.asset, required this.title, required this.see, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(asset),
        SizedBox(
          width: 15.4.r,
        ),
         CustomText(
          text: title,
          size: 24,
          weight: FontWeight.w700,
          color: AppColors.primaryBlue,
        ),
        const Expanded(child: SizedBox()),
        see ? TextButton(
          onPressed: onPressed,
          child: const CustomText(
            text: 'See all',
            size: 16,
            weight: FontWeight.w700,
            color: AppColors.primaryBlue,
          ),
        ) : const SizedBox(),
      ],
    );
  }
}
