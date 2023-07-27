import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../constants/default_text_style.dart';
import '../widgets/page_indicator_container.dart';

class AgePage extends StatelessWidget {
  const AgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30 , vertical: 30.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 34.h,
                    width: 34.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        color: AppColors.lightGrey,
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const PrimaryTextStyle(
                        text: 'How old are you ?',
                        size: 40,
                        weight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: Image.asset(
                          'assets/images/calendar_reg.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  SizedBox(
                    height: 18.38.h,
                    width: 69.69.w,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PageIndicatorContainer(rotate: 0.76),
                        PageIndicatorContainer(),
                        PageIndicatorContainer(),
                        PageIndicatorContainer(),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Container(
                    height: 60.h,
                    width: 60.h,
                    child: FloatingActionButton(
                        highlightElevation: 0,
                        elevation: 0,
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const _(),
                          //   ),
                          // );
                        },
                        child: const Icon(Icons.arrow_forward)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
