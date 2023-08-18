import 'package:agro_app/constants/default_text_style.dart';
import 'package:agro_app/routes/app_router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/cubit/simple_cubits/update_dial.dart';
import '../../constants/app_colors.dart';
import '../../widgets/auth_widgets/text_form_field.dart';
import '../../widgets/other_widgets/general/text_field_title.dart';
import 'gender_and_name_page_dart.dart';

@RoutePage()
class SignInWrapper extends StatelessWidget {
  SignInWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UpdateDialCubit(),
        ),
      ],
      child: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final countryPicker = const FlCountryCodePicker();
  final countryPickerWithParams = const FlCountryCodePicker(
      localize: true, showDialCode: true, showSearchBar: true);

  final ValueNotifier<bool> codeVisible = ValueNotifier(false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: BlocBuilder<UpdateDialCubit, CountryCode>(
              builder: (context, state) {
                return Column(
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
                    Column(
                      children: [
                         const TextFieldTitle(title: 'Phone number'),
                        SizedBox(height: 8.h),


                             TextFormFieldCT(
                              state: state,
                              textInputType: TextInputType.number,
                              hintText: 'Enter your phone number',
                              prefixRow: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 7),
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
                        const TextFieldTitle(title: 'Password'),
                        SizedBox(height: 8.h),
                        ValueListenableBuilder(
                          valueListenable: codeVisible,
                          builder: (context , isVisible , _) {
                            return TextFormFieldCT(

                              isCodeField:!codeVisible.value,
                              hintText: 'Enter your name',

                              suffixRow: GestureDetector(
                                onTap: (){
                                  codeVisible.value = !codeVisible.value;
                                },
                                child: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
                              ),
                            );
                          }
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
                        onPressed: () {
                         context.router.push(const MainRoute());
                        },
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
                     context.router.push(const SignUpWrapper());
                          },
                          child: const PrimaryTextStyle(
                            text: 'Sign up',
                            color: AppColors.mainTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
