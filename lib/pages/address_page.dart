import 'package:agro_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/default_text_style.dart';

import '../widgets/back_button_on_boarding.dart';
import '../widgets/bottom_nav_bar_auth.dart';
import '../widgets/page_indicator_container.dart';
import '../widgets/text_form_field.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? valueChoose;
  List listItem = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarAuth(index: 3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              const Row(
                children: [
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
              SizedBox(height: 15.h),
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
              // padding: const EdgeInsets.symmetric(horizontal: 6),
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(4),
              //                   border: Border.all(color: AppColors.lightGrey, width: 2),
              //                 ),
              SizedBox(height: 8.h),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                borderRadius: BorderRadius.circular(4),
                isExpanded: true,
                value: valueChoose,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose = newValue as String;
                  });
                },
                items: listItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
