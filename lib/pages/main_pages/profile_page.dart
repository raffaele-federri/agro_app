import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/other_widgets/general/300_hug_button.dart';
import 'package:agro_app/widgets/other_widgets/home_page/profile_info_box.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/other_widgets/general/text_field_title.dart';
import '../../widgets/other_widgets/home_page/edit_information_bottom_sheet.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const Expanded(child: SizedBox()),
            Text(
              'Edit',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.secondaryBlue,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                SizedBox(
                  height: 60.r,
                  width: 60.r,
                  child: Image.asset(
                    'assets/images/user_reg.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10.r,
                ),
                const CustomText(
                  text: '#1654543',
                  size: 30,
                  color: AppColors.activeColor,
                  weight: FontWeight.w900,
                )
              ],
            ),
            SizedBox(height: 20.r),
            Column(
              children: [
                const TextFieldTitle(title: 'Full name', inactive: true),
                SizedBox(height: 8.r),
                const InfoBox(title: 'Raffaele'),
              ],
            ),
            SizedBox(height: 15.r),
            Column(
              children: [
                const TextFieldTitle(title: 'Phone number', inactive: true),
                SizedBox(height: 8.r),
                const InfoBox(title: '+998 90 123 45 67'),
              ],
            ),
            SizedBox(
              height: 15.r,
            ),
            HugButton(
              title: 'Change Password',
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return  EditInformationBottomSheet();
                  },
                );
              },
            ),
            SizedBox(height: 15.r),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFieldTitle(title: 'Age', inactive: true),
                    SizedBox(height: 8.r),
                    const InfoBox(title: '+998 90 123 45 67', width: 145),
                  ],
                ),
                SizedBox(width: 10.r),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextFieldTitle(title: 'Gender', inactive: true),
                    SizedBox(height: 8.r),
                    InfoBox(
                      width: 44,
                      child: SvgPicture.asset('assets/icons/male_symbol.svg'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.r),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFieldTitle(title: 'Country', inactive: true),
                      SizedBox(height: 8.r),
                      const InfoBox(title: 'Country'),
                    ],
                  ),
                ),
                SizedBox(width: 10.r),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextFieldTitle(title: 'City', inactive: true),
                      SizedBox(height: 8.r),
                      const InfoBox(title: 'City'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.r),
            Column(
              children: [
                const TextFieldTitle(title: 'Working Status', inactive: true),
                SizedBox(height: 8.r),
                const InfoBox(title: 'Employee'),
              ],
            ),
            SizedBox(height: 15.r),
            SizedBox(
              width: 200.r,
              height: 50.r,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    StadiumBorder(),
                  ),
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.primaryError),
                  elevation: MaterialStatePropertyAll(0),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Delete Account',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 200.r),
          ],
        ),
      ),
    );
  }
}
