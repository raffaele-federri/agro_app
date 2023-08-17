import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/auth_widgets/back_button_on_boarding.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/other_widgets/home_page/title_in_manual.dart';

class RightsDetailPage extends StatelessWidget {
  const RightsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const TitleInManuals(title: 'Lorem Ipsum' , size: 14),
                    SizedBox(height: 15.r),
                    const CustomText(
                      maxLines: 100,
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Faucibus nisl tincidunt eget nullam non nisi est sit. Aenean vel elit scelerisque mauris. Porttitor eget dolor morbi non arcu. Pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Vitae congue mauris rhoncus aenean vel. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Ultrices tincidunt arcu non sodales neque sodales ut etiam. Montes nascetur ridiculus mus mauris. Ultrices gravida dictum fusce ut placerat orci nulla pellentesque dignissim. Velit dignissim sodales ut eu sem integer vitae. Pharetra et ultrices neque ornare aenean euismod elementum nisi quis. Cursus eget nunc scelerisque viverra mauris in. Sit amet volutpat consequat mauris nunc. Tortor aliquam nulla facilisi cras fermentum odio.Pharetra magna ac placerat vestibulum lectus mauris ultrices eros. Congue mauris rhoncus aenean vel elit. Vel eros donec ac odio tempor orci dapibus ultrices. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Mattis vulputate enim nulla aliquet porttitor lacus luctus. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Proin nibh nisl condimentum id. Accumsan sit amet nulla facilisi morbi. Vivamus arcu felis bibendum ut tristique et egestas quis ipsum. Ullamcorper malesuada proin libero nunc consequat interdum. Id velit ut tortor pretium viverra suspendisse potenti nullam ac.In fermentum posuere urna nec tincidunt praesent semper feugiat nibh. Nisi scelerisque eu ultrices vitae. Nibh tellus molestie nunc non blandit massa enim nec dui. At risus viverra adipiscing at in. Integer feugiat scelerisque varius morbi. Vulputate enim nulla aliquet porttitor. Gravida arcu ac tortor dignissim convallis. Venenatis urna cursus eget nunc scelerisque viverra mauris. Diam sit amet nisl suscipit adipiscing bibendum est. Iaculis urna id volutpat lacus laoreet non curabitur. Sed vulputate mi sit amet. Vitae suscipit tellus mauris a.Ac feugiat sed lectus vestibulum mattis ullamcorper. Cursus in hac habitasse platea dictumst. Diam quis enim lobortis scelerisque fermentum dui faucibus in. Enim eu turpis egestas pretium aenean. Rhoncus aenean vel elit scelerisque mauris. Interdum varius sit amet mattis vulputate enim. Tristique sollicitudin nibh sit amet. Proin libero nunc consequat interdum varius. Venenatis urna cursus eget nunc scelerisque. Magna etiam tempor orci eu lobortis.Id diam maecenas ultricies mi eget mauris pharetra et ultrices. Pharetra diam sit amet nisl suscipit adipiscing bibendum. Egestas fringilla phasellus faucibus scelerisque. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Ipsum dolor sit amet consectetur adipiscing. Donec enim diam vulputate ut pharetra sit amet aliquam id. Faucibus et molestie ac feugiat sed lectus. Dui accumsan sit amet nulla facilisi. Non blandit massa enim nec dui nunc mattis. Nibh nisl condimentum id venenatis a condimentum vitae sapien.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
