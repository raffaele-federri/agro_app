import 'package:agro_app/widgets/other_widgets/home_page/rete_selector.dart';
import 'package:agro_app/widgets/other_widgets/home_page/stadium_border_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_colors.dart';
import '../../auth_widgets/text_form_field.dart';
import '../../custom_text.dart';
import '../general/300_hug_button.dart';
import '../general/text_field_title.dart';
import 'edit_info_item.dart';

class CreateComplainBottomSheet extends StatelessWidget {
  const CreateComplainBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          initialChildSize: 0.9,
          maxChildSize: 0.9,
          minChildSize: 0.60,
          builder: (_, controller) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                children: [
                  const CustomText(
                    text: 'Write Complain',
                    size: 24,
                    weight: FontWeight.w900,
                    color: AppColors.primaryBlue,
                  ),
                  SizedBox(height: 30.r),
                  const TextFieldTitle(title: 'Title'),
                  SizedBox(height: 8.h),
                  TextFormFieldCT(
                    hintText: 'Enter your name',
                    maxLenght: 40,
                    onChanged: (text) {},
                  ),
                  // SizedBox(height: 15.r),
                  const TextFieldTitle(title: 'Address'),
                  SizedBox(height: 8.h),

                  TextFormFieldCT(
                    maxLenght: 15,
                    textInputType: TextInputType.number,
                    hintText: 'Select',
                    onChanged: (text) {},
                  ),
                  Row(
                    children: [
                      const EditInfoItem(title: 'Country'),
                      SizedBox(width: 10.r),
                      const EditInfoItem(title: 'City'),
                    ],
                  ),
                  SizedBox(height: 15.r),
                  const TextFieldTitle(title: 'Rate'),
                  SizedBox(height: 8.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RateSelector(icon: 'assets/images/rate1.png'),
                      RateSelector(icon: 'assets/images/rate2.png'),
                      RateSelector(icon: 'assets/images/rate3.png'),
                      RateSelector(icon: 'assets/images/rate4.png'),
                    ],
                  ),
                  SizedBox(height: 15.r),
                  const TextFieldTitle(title: 'Description'),
                  SizedBox(height: 8.r),
                  TextFormFieldCT(
                    maxLenght: 15,
                    textInputType: TextInputType.number,
                    hintText: 'Write here',
                    onChanged: (text) {},
                  ),
                  SizedBox(height: 15.r),
                  StadiumBorderButton(
                    color: const Color(0xffF1F2F5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/skripka.svg'),
                        SizedBox(width: 10.r),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Add File',
                              color: AppColors.textGrey,
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.r),

                  HugButton(
                    title: 'Send',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
