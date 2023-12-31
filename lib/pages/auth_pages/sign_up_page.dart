import 'package:agro_app/bloc/cubit/sign_up/sign_up_cubit.dart';
import 'package:agro_app/routes/app_router.gr.dart';
import 'package:agro_app/widgets/other_widgets/general/text_field_title.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/cubit/simple_cubits/update_dial.dart';

import '../../constants/app_colors.dart';
import '../../core/extensions.dart';
import '../../constants/default_text_style.dart';
import '../../widgets/auth_widgets/back_button_on_boarding.dart';
import '../../widgets/auth_widgets/text_form_field.dart';

@RoutePage()
class SignUpWrapper extends StatelessWidget {
  const SignUpWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UpdateDialCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
      ],
      child: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final controllerPassword = TextEditingController();
  final countryPicker = const FlCountryCodePicker();
  final _numberKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  final _passwordCheckKey = GlobalKey<FormState>();
  final ValueNotifier<bool> onKeyboard = ValueNotifier(false);
  final ValueNotifier<bool> codeVisible = ValueNotifier(false);
  final ValueNotifier<bool> codeVerifyVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final bottomS = MediaQuery.of(context).viewInsets.bottom;
    debugPrint("---> bottom $bottomS");
    return Scaffold(
      // endDrawerEnableOpenDragGesture: false,

      // appBar: AppBar(
      //   elevation: 0,
      //   scrolledUnderElevation: 0,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.transparent,
      //   title: const Row(
      //     children: [
      //       CustomBackButton(),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: BlocBuilder<UpdateDialCubit, CountryCode>(
          builder: (context, state) {
            return FocusScope(
              onFocusChange: (value) {
                debugPrint("Clear up[ $value");
              },
              child: KeyboardVisibilityBuilder(builder: (context, isOpened) {
                return CustomScrollView(
                  reverse: isOpened,
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    const SliverAppBar(
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.transparent,
                      title: Row(
                        children: [
                          CustomBackButton(),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.r),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/user_reg.png',
                                fit: BoxFit.fill,
                              ),
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
                            SizedBox(height: 34.h),
                            Column(
                              children: [
                                const TextFieldTitle(title: 'Phone Number'),
                                SizedBox(height: 8.h),
                                Form(
                                  key: _numberKey,
                                  child: TextFormFieldCT(
                                    validator: (val) {
                                      if (!val!.isValidPhone) {
                                        return 'Enter valid number';
                                      }
                                      return null;
                                    },
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
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: state.flagImage(
                                                fit: BoxFit.cover),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              final code = await countryPicker
                                                  .showPicker(context: context);
                                              if (code != null &&
                                                  context.mounted) {
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
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onChanged: (text) {
                                      if (_numberKey.currentState!.validate()) {
                                        context
                                            .read<SignUpCubit>()
                                            .setPhone(text);
                                      } else {
                                        context
                                            .read<SignUpCubit>()
                                            .setPhone('');
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: [
                                const TextFieldTitle(title: 'Password'),
                                SizedBox(height: 8.h),
                                Form(
                                  key: _passwordKey,
                                  child: ValueListenableBuilder(
                                      valueListenable: codeVisible,
                                      builder: (context, isVisible, _) {
                                        return TextFormFieldCT(
                                          controller: controllerPassword,
                                          hintText: 'Enter your password',
                                          textInputType: TextInputType.text,
                                          validator: (value) {
                                            if (!value!.isValidPassword) {
                                              return 'At least 8 characters and one number or symbol';
                                            }
                                            return null;
                                          },
                                          isCodeField: !codeVisible.value,
                                          suffixRow: InkWell(
                                            onTap: () {
                                              codeVisible.value =
                                                  !codeVisible.value;
                                            },
                                            child: Icon(isVisible
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                          ),
                                          onChanged: (text) {
                                            _passwordKey.currentState!
                                                .validate();
                                          },
                                        );
                                      }),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: [
                                const TextFieldTitle(title: 'Confirm password'),
                                SizedBox(height: 8.h),
                                Form(
                                  key: _passwordCheckKey,
                                  child: ValueListenableBuilder(
                                      valueListenable: codeVerifyVisible,
                                      builder: (context, isVisible, _) {
                                        return TextFormFieldCT(
                                          validator: (val) {
                                            if (val !=
                                                controllerPassword.text) {
                                              return 'Password did not match';
                                            }
                                            return null;
                                          },
                                          hintText: 'Confirm your password',
                                          textInputType: TextInputType.text,
                                          isCodeField: !isVisible,
                                          suffixRow: GestureDetector(
                                            onTap: () {
                                              codeVerifyVisible.value =
                                                  !codeVerifyVisible.value;
                                            },
                                            child: Icon(
                                              isVisible
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                          ),
                                          onChanged: (text) {
                                            if (_passwordCheckKey.currentState!
                                                .validate()) {
                                              context
                                                  .read<SignUpCubit>()
                                                  .setPassword(text);
                                            } else {
                                              context
                                                  .read<SignUpCubit>()
                                                  .setPassword('');
                                            }
                                          },
                                        );
                                      }),
                                ),
                              ],
                            ),
                            SizedBox(height: 50.h),
                            BlocBuilder<SignUpCubit, SignUpState>(
                              builder: (context, state) {
                                return SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: state.whenOrNull(
                                      settingUp: (data) =>
                                          data.isFirstStepFilled
                                              ? () {
                                                  context.router
                                                      .push(GenderAndNameRoute(
                                                    cubit: context
                                                        .read<SignUpCubit>(),
                                                  ));
                                                }
                                              : null,
                                    ),
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
                                );
                              },
                            ),
                            SizedBox(height: 24.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const PrimaryTextStyle(
                                  size: 16,
                                  text: 'Do\'nt have an accaunt ?',
                                  color: Color(0xff818E9B),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const PrimaryTextStyle(
                                    size: 16,
                                    text: 'Sign in',
                                    color: AppColors.mainTextColor,
                                  ),
                                ),
                              ],
                            ),
                            if (isOpened) 0.35.sh.verticalSpace
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
