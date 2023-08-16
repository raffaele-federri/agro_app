import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class NoComplainsWidget extends StatelessWidget {
  const NoComplainsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          width: 1,
          color: const Color(0xffCCE5FF),
        ),
      ),
      height: 0.199197861.sh,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 0.r),
          const CustomText(
            text: 'No complains created yet',
            size: 18,
            weight: FontWeight.w700,
            color: AppColors.activeColor,
          ),
          SizedBox(
            height: 50.r,
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      AppColors.mainTextColor)),
              onPressed: () {},
              child:  const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'New complain',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
