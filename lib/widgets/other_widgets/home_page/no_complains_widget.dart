import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';
import '../general/300_hug_button.dart';
import 'create_complain_bottom_sheet.dart';

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
          HugButton(
            title: 'New complain',
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return  CreateComplainBottomSheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
