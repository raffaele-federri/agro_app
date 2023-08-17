import 'package:agro_app/widgets/other_widgets/home_page/title_in_manual.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class HotlineBox extends StatelessWidget {
  final String title;
  final String number;
  final String address;

  const HotlineBox(
      {super.key,
      required this.title,
      required this.number,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 0.13368984.sh,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CustomText(

                text: title,
                size: 14,
                color: AppColors.activeColor,
                weight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(height: 14.r),
          Row(
            children: [
              SvgPicture.asset('assets/icons/hotline_phone.svg'),
              SizedBox(width: 7.r),
              CustomText(
                maxLines: 4,
                text: number,
                size: 12,
                weight: FontWeight.w400,
                color: AppColors.textGrey,
              ),
            ],
          ),
          SizedBox(height: 10.r),
          Row(
            children: [
              SvgPicture.asset('assets/icons/hotline_location.svg'),
              SizedBox(width: 7.r),
              CustomText(
                maxLines: 4,
                text: address,
                size: 12,
                weight: FontWeight.w400,
                color: AppColors.textGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
