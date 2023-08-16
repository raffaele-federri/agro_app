import 'package:agro_app/pages/auth_pages/address_page.dart';
import 'package:agro_app/pages/auth_pages/gender_and_name_page_dart.dart';
import 'package:agro_app/pages/auth_pages/working_status_page.dart';
import 'package:agro_app/routes/app_router.gr.dart';
import 'package:agro_app/widgets/auth_widgets/page_indicator_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import '../../pages/auth_pages/age_page.dart';

class BottomNavBarAuth extends StatelessWidget {
  final int index;
  final void Function()? onPressed;

  const BottomNavBarAuth({
    super.key,
    required this.index,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: Row(
        children: [
          AnimatedContainer(
            height: 18.38.h,
            width: 69.69.w,
            duration: const Duration(milliseconds: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PageIndicatorContainer(rotate: index == 1 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 2 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 3 ? 0.76 : 0),
                PageIndicatorContainer(rotate: index == 4 ? 0.76 : 0),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          SizedBox(
            height: 60.h,
            width: 60.h,
            child: FloatingActionButton(
                highlightElevation: 0,
                elevation: 0,
                onPressed: onPressed,
                // onPressed: () {
                //   if (index == 1) {
                //     context.router.push(AgeRoute());
                //   } else if (index == 2) {
                //     context.router.push(const AddressRoute());
                //   } else if (index == 3) {
                //     context.router.push(WorkingStatusRoute());
                //   } else if (index == 4) {
                //     context.router.push(const MainRoute());
                //   }
                // },
                child: const Icon(Icons.arrow_forward)),
          ),
        ],
      ),
    );
  }
}
