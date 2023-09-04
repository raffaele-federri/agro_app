import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/other_widgets/home_page/hotline_box.dart';
import 'package:agro_app/widgets/other_widgets/home_page/manuals_box.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/cubit/simple_cubits/bottom_nav_bar_cubit.dart';

import '../../widgets/other_widgets/home_page/home_page_title_row.dart';
import '../../widgets/other_widgets/general/text_form_field.dart';
import '../../widgets/other_widgets/home_page/no_complains_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const CustomText(
              text: 'Good day,',
              size: 30,
              weight: FontWeight.w900,
              color: AppColors.activeColor,
            ),
            SizedBox(width: 8.r),
            const CustomText(
              text: 'Raffaele',
              size: 30,
              weight: FontWeight.w500,
              color: AppColors.primaryBlue,
            ),
            SizedBox(
              width: 12.r,
            ),
            SvgPicture.asset('assets/images/hello.svg'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20.r),
              const TextFormFieldMain(),
              SizedBox(
                height: 32.r,
              ),
              TitleRow(
                asset: 'assets/icons/manuals.svg',
                title: 'Manuals',
                onPressed: () {
                  context.read<BottomNavBarCubit>().changeTab(1);
                },
                see: true,
              ),
              SizedBox(height: 20.r),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ManualsBox(
                    title: 'Farmers\' Rights',
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                  ),
                  ManualsBox(
                    title: 'Rights Violations',
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                  ),
                ],
              ),
              SizedBox(height: 25.r),
              const TitleRow(
                  asset: 'assets/icons/complains.svg',
                  title: 'My complains',
                  see: false),
              SizedBox(height: 20.r),
              const NoComplainsWidget(),
              SizedBox(height: 20.r),
              TitleRow(
                asset: 'assets/icons/hotline.svg',
                title: 'Hotline contacts',
                onPressed: () {
                  context.read<BottomNavBarCubit>().changeTab(2);
                },
                see: true,
              ),
              SizedBox(height: 20.r),
              const HotlineBox(

                  title: 'Federation of professional associations',
                  number: '+ 998 93 553 07 17',
                  address: '77905 Block Highway, Hudsonland'),

              const HotlineBox(
                  title: 'Labor exchange',
                  number: '+ 998 93 553 07 17',
                  address: '77905 Block Highway, Hudsonland'),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
