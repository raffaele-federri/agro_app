import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/app_colors.dart';

class ShimmerContactBox extends StatelessWidget {
  const ShimmerContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 9),

      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        boxShadow:  const [
          BoxShadow(
            color: AppColors.lightGrey,
            offset: Offset(0.0, 0.1), //(x,y)
            blurRadius: 4.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 105.r,
      width: double.infinity,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[100]!,
            highlightColor: Colors.white,
            child: Container(
              width: 110,
              height: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 14.r),
          Shimmer.fromColors(
            baseColor: Colors.grey[100]!,
            highlightColor: Colors.white,
            child: Container(
              width: 140,
              height: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.r),
          Shimmer.fromColors(
            baseColor: Colors.grey[100]!,
            highlightColor: Colors.white,
            child: Container(
              width: 180,
              height: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
