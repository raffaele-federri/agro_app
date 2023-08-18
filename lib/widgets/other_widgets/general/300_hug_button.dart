import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class HugButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const HugButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.r,
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
            backgroundColor: MaterialStatePropertyAll(AppColors.mainTextColor)),
        onPressed: onPressed ?? () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: title,
              size: 16,
              weight: FontWeight.w700,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
