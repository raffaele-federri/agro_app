
import 'package:agro_app/widgets/gender_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/default_text_style.dart';
import '../widgets/back_button_on_boarding.dart';

import '../widgets/page_indicator_container.dart';
import '../widgets/text_form_field.dart';
import 'age_page.dart';

class GenderAndNamePage extends StatelessWidget {
  const GenderAndNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
                        text: 'Who are you ?',
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
                          'assets/images/user_reg.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 47.h),
              const Row(
                children: [
                  PrimaryTextStyle(
                    text: 'Full name',
                    size: 12,
                    weight: FontWeight.w700,
                    color: Color(0xff187CD3),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              TextFormFieldCT(
                hintText: 'Enter your name',
              ),
              SizedBox(height: 32.h),
              const GenderPicker(),

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
                  SizedBox(
                    height: 60.h,
                    width: 60.h,
                    child: FloatingActionButton(
                        highlightElevation: 0,
                        elevation: 0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AgePage(),
                            ),
                          );
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