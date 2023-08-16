import 'package:agro_app/widgets/auth_widgets/bottom_nav_bar_auth.dart';
import 'package:agro_app/widgets/auth_widgets/gender_picker.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import '../../constants/default_text_style.dart';
import '../../routes/app_router.gr.dart';
import '../../widgets/auth_widgets/back_button_on_boarding.dart';

import '../../widgets/auth_widgets/text_form_field.dart';
import 'age_page.dart';

@RoutePage()
class GenderAndNamePage extends StatelessWidget {
  final SignUpCubit cubit;

  GenderAndNamePage({super.key, required this.cubit});

  final _nameKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Builder(
        builder: (context) {
          return Scaffold(
            endDrawerEnableOpenDragGesture: false,
            bottomNavigationBar: BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                return BottomNavBarAuth(
                  index: 1,
                  onPressed: state.whenOrNull(
                    settingUp: (data) => data.isSecondStepFilled
                        ? () {
                            context.router.push(AgeRoute(
                              cubit: context.read<SignUpCubit>(),
                            ));
                          }
                        : null,
                  ),
                );
              },
            ),
            appBar: AppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              title: const Row(
                children: [
                  CustomBackButton(),
                ],
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
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
                              height: 60,
                              width: 60,
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
                    Form(
                      key: _nameKey,
                      child: TextFormFieldCT(
                        validator: (val) {
                          if (val == '') {
                            return 'This field is required';
                          }
                        },
                        hintText: 'Enter your name',
                        onChanged: (text) {
                          if (_nameKey.currentState!.validate()) {
                            context.read<SignUpCubit>().setUsername(text);
                          } else {
                            context.read<SignUpCubit>().setUsername('');
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 32.h),
                    const GenderPicker(),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
