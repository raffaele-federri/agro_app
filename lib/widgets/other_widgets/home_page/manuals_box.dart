import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/routes/app_router.gr.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/other_widgets/home_page/title_in_manual.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ManualsBox extends StatelessWidget {
  final String title;
  final String text;

  const ManualsBox({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
      context.router.push( RightsDetailRoute(text: text));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),

        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGrey,
              offset: Offset(0.2, 0.2), //(x,y)
              blurRadius: 9.0,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        // height: 149,
        // width: 160,
        height: 0.199197861.sh,
        width: 0.444444444.sw,
        child: Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TitleInManuals(title: title),
              ],
            ),
            SizedBox(height: 8.r),
             CustomText(
              maxLines: 4,
              text: text,
              size: 18,
              weight: FontWeight.w700,
              color: AppColors.activeColor,
            ),
          ],
        ),
      ),
    );
  }
}
