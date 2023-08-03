import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/default_text_style.dart';

import '../widgets/back_button_on_boarding.dart';
import '../widgets/bottom_nav_bar_auth.dart';
import '../widgets/page_indicator_container.dart';
import '../widgets/text_form_field.dart';

class AddressPage extends StatelessWidget {
  AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarAuth(index: 3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Row(
                children: const [
                  CustomBackButton(),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const PrimaryTextStyle(
                        text: 'Where are you from ?',
                        size: 30,
                        weight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 32.h,
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
                ],
              ),
              Row(
                children: const [
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
              Container(
                decoration: BoxDecoration(border: Border.all()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
