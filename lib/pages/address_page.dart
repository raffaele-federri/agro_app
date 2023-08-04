import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/default_text_style.dart';

import '../widgets/dropdown_form_field.dart';
import '../widgets/back_button_on_boarding.dart';
import '../widgets/bottom_nav_bar_auth.dart';

import '../widgets/text_form_field.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? valueChoose;
  List listCountry = [
    'Uzbekistan',
    'Qazaqstan',
    'Kyrgyzstan',
    'Russia',
    'Netherlands',
  ];
  List listRegion = [
    'Tashkent',
    'Bishkek',
    'Almati',
    'Moscow',
    'Amsterdam',
  ];
  List listCity = [
    'Yunusobod',
    'Mirzo Ulugbek',
    'Shayhontohur',
    'Yashnobod',
    'Olmazor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      bottomNavigationBar: const BottomNavBarAuth(index: 3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  children: [
                    CustomBackButton(),
                  ],
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    const PrimaryTextStyle(
                      text: '    What\'s your \n working status ?' ,
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
                        'assets/images/work_reg.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 33),
                const Row(
                  children: [
                    PrimaryTextStyle(
                      text: 'Country',
                      size: 12,
                      weight: FontWeight.w700,
                      color: Color(0xff187CD3),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                DropdownFormFieldCT(
                    listItem: listCountry, hint: 'Select the country'),
                SizedBox(height: 15.h),
                const Row(
                  children: [
                    PrimaryTextStyle(
                      text: 'Region',
                      size: 12,
                      weight: FontWeight.w700,
                      color: Color(0xff187CD3),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                DropdownFormFieldCT(
                    listItem: listRegion, hint: 'Select the region'),
                SizedBox(height: 15.h),
                const Row(
                  children: [
                    PrimaryTextStyle(
                      text: 'City',
                      size: 12,
                      weight: FontWeight.w700,
                      color: Color(0xff187CD3),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                DropdownFormFieldCT(
                    listItem: listCity, hint: 'Select the city'),
                SizedBox(height: 15.h),
                const Row(
                  children: [
                    PrimaryTextStyle(
                      text: 'Address',
                      size: 12,
                      weight: FontWeight.w700,
                      color: Color(0xff187CD3),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                TextFormFieldCT(
                  hintText: 'Type your address',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
