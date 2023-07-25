import 'package:agro_app/bloc/cubit/update_dial.dart';
import 'package:agro_app/constants/default_text_style.dart';
import 'package:agro_app/widgets/border_container.dart';
import 'package:agro_app/widgets/text_form_field.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final countryPicker = const FlCountryCodePicker();
  final countryPickerWithParams = const FlCountryCodePicker(
      localize: true, showDialCode: true, showSearchBar: true);
  final numberFocus = FocusNode();
  final passwordFocus = FocusNode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 39.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryTextStyle(
                      text: 'Welcome',
                      size: 40,
                      weight: FontWeight.w800,
                    ),
                  ],
                ),
                SizedBox(height: 83.h),
                BlocBuilder<UpdateDialCubit, CountryCode>(
                  builder: (context, state) {
                    return  Column(
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
                        BorderContainer(
                          focus: numberFocus,
                          rowChildren: [
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
                              child: const Icon(Icons.arrow_drop_down),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: TextFormFieldCT(
                                  state: state,
                                  dial: state.dialCode,
                                  textInputType: TextInputType.number,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
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
                    BorderContainer(
                      focus: passwordFocus,
                      rowChildren: [
                        Flexible(
                          child: TextFormFieldCT(
                            isCodeField: true,

                          ),
                        ),
                        const Icon(Icons.visibility)
                      ],
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
                SizedBox(height: 125.h),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: Text(
                      'Login',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
