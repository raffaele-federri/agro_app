import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/page_indicator_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import 'login_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.openSans(
                        color: const Color(0xff00416A),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                ],
              ),
              SizedBox(height: 138.h),
              const CustomText(
                text: 'Main Title',
                size: 40,
                weight: FontWeight.w800,
                color: AppColors.mainTextColor,
              ),
              const SizedBox(height: 16),
              const CustomText(
                text: 'Some text about product goes here',
                size: 16,
                color: AppColors.mainTextColor,
              ),
              SizedBox(height: 50.h),
              Container(
                height: 18.38.h,
                width: 69.69.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    PageIndicatorContainer(rotate: 0.76),
                    PageIndicatorContainer(),
                    PageIndicatorContainer(),
                    PageIndicatorContainer(),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Container(
                height: 76.h,
                width: 76,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffCCE5FF), width: 2),
                  borderRadius: BorderRadius.circular(38),
                  // color: Colors.amber,
                ),
                padding: const EdgeInsets.all(6),
                child: FloatingActionButton(
                  highlightElevation: 0,
                  elevation: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/icons/play.png',
                    height: 22.h,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
