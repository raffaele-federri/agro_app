import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/app_colors.dart';

class ShimmerRightsBox extends StatelessWidget {
  final int itemCount;
  const ShimmerRightsBox({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 12, vertical: 9),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColors.lightGrey,
                  offset: Offset(0.0, 0.1), //(x,y)
                  blurRadius: 4.0,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 0.199197861.sh,
            width: 0.444444444.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey[100]!,
                      highlightColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        width: 50,
                        height: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.r),
                Shimmer.fromColors(
                  baseColor: Colors.grey[100]!,
                  highlightColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 80,
                    height: 18,
                  ),
                ),SizedBox(height: 8.r),
                Shimmer.fromColors(
                  baseColor: Colors.grey[100]!,
                  highlightColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 130,
                    height: 18,
                  ),
                ),SizedBox(height: 8.r),
                Shimmer.fromColors(
                  baseColor: Colors.grey[100]!,
                  highlightColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 90,
                    height: 18,
                  ),
                ),SizedBox(height: 8.r),
                Shimmer.fromColors(
                  baseColor: Colors.grey[100]!,
                  highlightColor: Colors.white,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    width: 110,
                    height: 18,
                  ),
                ),
              ],
            ),
          );
        },
      );
  }
}

