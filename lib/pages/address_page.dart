import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../constants/default_text_style.dart';

import '../widgets/back_button_on_boarding.dart';
import '../widgets/page_indicator_container.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.h),
          child: Column(
            children: [
              const Row(
                children: [
                  CustomBackButton(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const PrimaryTextStyle(
                        text: 'Where are you from ?',
                        size: 40,
                        weight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 60.h,
                        width: 60.w,
                        child: Image.asset(
                          'assets/images/location_reg.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  SizedBox(
                    height: 18.38.h,
                    width: 69.69.w,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PageIndicatorContainer(),
                        PageIndicatorContainer(),
                        PageIndicatorContainer(rotate: 0.76),
                        PageIndicatorContainer(),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  SizedBox(
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
                        child: const Icon(Icons.arrow_forward)),
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
