import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/auth_widgets/back_button_on_boarding.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/other_widgets/home_page/title_in_manual.dart';

@RoutePage()
class RightsDetailPage extends StatelessWidget {
  final String? text;

  const RightsDetailPage({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.r),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const TitleInManuals(title: 'Lorem Ipsum', size: 14),
                    SizedBox(height: 15.r),
                     CustomText(
                      maxLines: 100,
                      text: text ?? 'Right is not available in your language',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.r),
            ],
          ),
        ),
      ),
    );
  }
}
