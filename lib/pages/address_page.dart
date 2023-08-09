import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/default_text_style.dart';

import '../routes/app_router.gr.dart';
import '../widgets/dropdown_form_field.dart';
import '../widgets/back_button_on_boarding.dart';
import '../widgets/bottom_nav_bar_auth.dart';

import '../widgets/text_form_field.dart';

@RoutePage()
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

      // endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        elevation: 0 ,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            CustomBackButton(),
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavBarAuth(index: 3, onPressed: () { context.router.push(WorkingStatusRoute()); },),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: KeyboardVisibilityBuilder(
            builder: (context , isOpened) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                reverse: isOpened,
                child: Column(
                  children: [
                    Column(
                      children: [
                        const PrimaryTextStyle(
                          text: 'Where are you from?' ,
                          size: 30,
                          weight: FontWeight.w800,
                        ),
                        SizedBox(
                          height: 25.h,
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
                          text: 'Region',
                          size: 12,
                          weight: FontWeight.w700,
                          color: Color(0xff187CD3),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    DropdownFormFieldCT(
                        listItem: listCity, hint: 'Select the region'),
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
                    if(isOpened)  0.40.sh.verticalSpace
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}
