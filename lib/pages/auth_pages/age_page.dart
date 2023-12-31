import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import '../../constants/default_text_style.dart';
import '../../routes/app_router.gr.dart';
import '../../widgets/auth_widgets/age_picker.dart';
import '../../widgets/auth_widgets/back_button_on_boarding.dart';
import '../../widgets/auth_widgets/bottom_nav_bar_auth.dart';

@RoutePage()
class AgePage extends StatefulWidget {
  final SignUpCubit cubit;

  const AgePage({super.key, required this.cubit});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int _currentValue = 20;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: Builder(
        builder: (context) {
          return Scaffold(
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
            bottomNavigationBar: BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                return BottomNavBarAuth(
                  index: 2,
                  onPressed: state.whenOrNull(
                    settingUp: (data) => data.isThirdStepFilled
                        ? () {
                            final cubit = context.read<SignUpCubit>();
                            debugPrint('context sing in cubit is $cubit');
                            context.router.push(
                              AddressRouteWrapper(cubit: cubit),
                            );
                          }
                        : null,
                  ),
                );
              },
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  print(' MaxWidth : ${constraints.maxWidth}');
                  print(' MaxHeight : ${constraints.maxHeight}');
                  return Column(
                    children: [
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              PrimaryTextStyle(
                                text: 'How old are you ?',
                                maxLines: 1,
                                size: constraints.maxWidth < 330 ? 30 : 40,
                                weight: FontWeight.w800,
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                              constraints.maxHeight < 570
                                  ? const SizedBox()
                                  : SizedBox(
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
                      const SizedBox(height: 20),
                      NumberPicker(
                        minValue: 18,
                        maxValue: 80,
                        itemHeight: 70.h,
                        itemWidth: 110,
                        textStyle: GoogleFonts.openSans(
                          fontSize: constraints.maxHeight < 570 ? 28.r : 30.r,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff00416A).withOpacity(0.6),
                        ),
                        selectedTextStyle: GoogleFonts.openSans(
                          fontSize: constraints.maxHeight < 570 ? 38.r : 50.r,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff00416A),
                        ),
                        value: _currentValue,
                        itemCount: 5,
                        onChanged: (value) {
                          context.read<SignUpCubit>().setAge(value);
                          setState(
                            () => _currentValue = value,
                          );
                        },
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffCCE5FF),
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
