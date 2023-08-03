import 'package:agro_app/pages/address_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../constants/default_text_style.dart';
import '../widgets/age_picker.dart';
import '../widgets/back_button_on_boarding.dart';
import '../widgets/bottom_nav_bar_auth.dart';
import '../widgets/page_indicator_container.dart';

class AgePage extends StatefulWidget {
  AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int _currentValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarAuth(index: 2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.h),
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
                        text: 'How old are you ?',
                        size: 40,
                        weight: FontWeight.w800,
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
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
              NumberPicker(
                minValue: 18,
                maxValue: 80,
                itemHeight: 70.h,
                textStyle: GoogleFonts.openSans(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00416A).withOpacity(0.6),
                ),
                selectedTextStyle: GoogleFonts.openSans(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00416A),
                ),
                value: _currentValue,
                itemCount: 5,
                onChanged: (value) => setState(
                  () => _currentValue = value,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffCCE5FF),
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
