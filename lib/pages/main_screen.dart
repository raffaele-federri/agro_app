import 'package:agro_app/bloc/blocs/create_complain/create_complain_bloc.dart';
import 'package:agro_app/pages/main_pages/home_page.dart';
import 'package:agro_app/pages/main_pages/profile_page.dart';
import 'package:agro_app/pages/main_pages/rights_page.dart';
import 'package:agro_app/widgets/other_widgets/home_page/create_complain_bottom_sheet.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../bloc/blocs/contacts_fetch/contacts_bloc.dart';
import '../bloc/blocs/rights_fetch/rights_bloc.dart';
import '../bloc/cubit/simple_cubits/bottom_nav_bar_cubit.dart';
import '../constants/app_colors.dart';
import '../core/custom_shape.dart';
import 'main_pages/contacts_page.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBarCubit(),
        ),
        BlocProvider(
          create: (context) => RightsBloc()..add(const RightsEvent.fetch()),
        ),
        BlocProvider(
          create: (context) => ContactsBloc()..add(const ContactsEvent.fetch()),
        ),
        BlocProvider(
          create: (context) => CreateComplainBloc(),
        ),
      ],
      child: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, int state) {
          return Scaffold(
            backgroundColor: AppColors.mainScreenBackgroundColor,
            extendBody: true,
            body: IndexedStack(
              index: state,
              children:   const [
                HomePage(),
                RightsPage(),
                ContactsPage(),
                ProfilePage(),
              ],
            ),
            // floatingActionButton:
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.miniCenterDocked,
            // bottomNavigationBar: BottomAppBar(
            //   height: 86.h,
            //   padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
            //   color: Colors.white,
            //
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisSize: MainAxisSize.max,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //
            //
            //
            //
            //
            //     ],
            //   ),
            // ),
            bottomNavigationBar: SizedBox(
              height: 130.r,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(1.sw, 130.r),
                    painter: RPSCustomPainter(),
                    child: Container(
                      // color: Colors.red,
                      padding: REdgeInsets.only(left: 34, right: 30, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          bottomTabItem(state, 'Home', 0, context),
                          bottomTabItem(state, 'Rights', 1, context),
                          const SizedBox(),
                          bottomTabItem(state, 'Contacts', 2, context),
                          bottomTabItem(state, 'Profile', 3, context),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 4).h,
                        height: 60.h,
                        width: 60.r,
                        child: FittedBox(
                          child: FloatingActionButton(
                            backgroundColor: AppColors.mainTextColor,
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return   const CreateComplainBottomSheet();
                                },
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/icons/add.svg',
                              height: 30.h,
                              width: 30.r,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  GestureDetector bottomTabItem(
      int state, String title, int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<BottomNavBarCubit>().changeTab(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/nav_ic_${index + 1}.svg',
            colorFilter: ColorFilter.mode(
              state == index
                  ? AppColors.primaryBlue
                  : AppColors.bottomNavBarUnselectedColor,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(height: 9.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: state == index
                  ? AppColors.primaryBlue
                  : AppColors.bottomNavBarUnselectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
