import 'package:agro_app/bloc/cubit/gender_chooser.dart';
import 'package:agro_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import 'gender_widget.dart';

class GenderPicker extends StatelessWidget {
  const GenderPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenderChooser(),
      child: BlocBuilder<GenderChooser, int?>(
        builder: (context, state) {
          if(state != null) {
            context.read<SignUpCubit>().setGenderId(state!);
            print("GENDER ID IS : $state");
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.read<GenderChooser>().changeTab(0);
                },
                child: GenderWidget(
                  text: 'Male',
                  asset: 'assets/images/male.png',
                  color:
                      state == 0 ? AppColors.activeColor : AppColors.lightGrey,
                ),
              ),
              SizedBox(width: 20.w),
              InkWell(
                onTap: () {
                  context.read<GenderChooser>().changeTab(1);
                },
                child: GenderWidget(
                  text: 'Female',
                  asset: 'assets/images/female.png',
                  color:
                      state == 1 ? AppColors.activeColor : AppColors.lightGrey,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
