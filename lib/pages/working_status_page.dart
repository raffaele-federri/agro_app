import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/default_text_style.dart';
import '../routes/app_router.gr.dart';
import '../widgets/auth_widgets/bottom_nav_bar_auth.dart';
import '../widgets/auth_widgets/back_button_on_boarding.dart';
import '../widgets/auth_widgets/working_status_drop.dart';

@RoutePage()
class WorkingStatusPage extends StatelessWidget {
  WorkingStatusPage({super.key});

  List listStatus = [
    'Employee',
    'Employer',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            CustomBackButton(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarAuth(
        index: 4,
        onPressed: () {
          context.router.push(const MainRoute());
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    const PrimaryTextStyle(
                      text: '   What’s your \nworking status?',
                      size: 40,
                      weight: FontWeight.w800,
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        'assets/images/location_reg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 33),
                const Row(
                  children: [
                    PrimaryTextStyle(
                      text: 'Wokring Status',
                      size: 12,
                      weight: FontWeight.w700,
                      color: Color(0xff187CD3),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                DropdownFormFieldCT(
                  listItem: listStatus,
                  hint: 'Select working status',
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: AppColors.textGrey,
                      size: 24,
                    ),
                    SizedBox(width: 8.w),
                    const CustomText(
                      text: 'Information:',
                      size: 14,
                      color: AppColors.textGrey,
                      weight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                const CustomText(
                  text:
                      "The list of professions associated with the agro-industrial sector allows us to offer specialized guidance and support based on the specific challenges and interests of different roles. It enables us to provide targeted information, such as agricultural best practices, legal regulations, market trends, or technological advancements that are most relevant to the user's field of work. \n \nBy collecting this information, we aim to enhance the user experience by offering customized recommendations, industry-specific updates, and networking opportunities that can foster collaboration and growth within the agricultural community. ",
                  color: AppColors.textGrey,
                  size: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
