import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/pages/gender_and_name_page_dart.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bloc/cubit/update_dial.dart';
import '../constants/default_text_style.dart';
import '../widgets/text_form_field.dart';

class SignUpWrapper extends StatelessWidget {
  const SignUpWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UpdateDialCubit(),
        ),
      ],
      child: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  final countryPicker = const FlCountryCodePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: BlocBuilder<UpdateDialCubit, CountryCode>(
            builder: (context, state) {
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Container(
                          height: 90,
                          width: 90,
                          child: Image.asset(
                            'assets/images/user_reg.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 34.h,
                          width: 34.w,
                        )
                      ],
                    ),
                    SizedBox(height: 39.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PrimaryTextStyle(
                          text: 'Registration',
                          size: 30,
                          weight: FontWeight.w800,
                        ),
                      ],
                    ),
                    SizedBox(height: 83.h),
                    Column(
                      children: [
                        const Row(
                          children: [
                            PrimaryTextStyle(
                              text: 'Phone Number',
                              size: 12,
                              weight: FontWeight.w700,
                              color: Color(0xff187CD3),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        TextFormFieldCT(
                          state: state,
                          textInputType: TextInputType.number,
                          hintText: 'Enter your phone number',
                          prefixRow: Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 26,
                                  width: 27,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: state.flagImage(fit: BoxFit.cover),
                                ),
                                InkWell(
                                  onTap: () async {
                                    final code = await countryPicker.showPicker(
                                        context: context);
                                    if (code != null && context.mounted) {
                                      context
                                          .read<UpdateDialCubit>()
                                          .updateCountryCode(code);
                                    }
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey.shade400,
                                  ),
                                ),
                                Text(
                                  state.dialCode,
                                  style: const TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Column(
                      children: [
                        const Row(
                          children: [
                            PrimaryTextStyle(
                              text: 'Password',
                              size: 12,
                              weight: FontWeight.w700,
                              color: Color(0xff187CD3),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        TextFormFieldCT(
                          hintText: 'Enter your password',

                          isCodeField: true,
                          //   suffixRow: [Icon(Icons.visibility),]
                        ),
                        SizedBox(height: 7.h),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            PrimaryTextStyle(
                              text: 'Forgot password ?',
                              size: 12,
                              color: Color(0xff187CD3),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            PrimaryTextStyle(
                              text: 'Confirm password',
                              size: 12,
                              weight: FontWeight.w700,
                              color: Color(0xff187CD3),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        TextFormFieldCT(
                          hintText: 'Confirm your password',
                          state: state,
                          textInputType: TextInputType.number,
                        ),
                      ],
                    ),
                    SizedBox(height: 125.h),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const GenderAndNamePage(),
                            ),
                          );
                        },
                        style: const ButtonStyle(),
                        child: Text(
                          'Proceed',
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const PrimaryTextStyle(
                          text: 'Do\'nt have an accaunt ?',
                          color: Color(0xff818E9B),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const PrimaryTextStyle(
                            text: 'Sign in',
                            color: AppColors.mainTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
