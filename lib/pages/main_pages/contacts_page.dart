import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../widgets/other_widgets/general/text_form_field.dart';
import '../../widgets/other_widgets/home_page/hotline_box.dart';

class ContactsPage extends StatelessWidget {
   ContactsPage({super.key});

  final listOfContacts = [
    const HotlineBox(
      title: 'Federation of professional associations',
      number: '+ 998 93 553 07 17',
      address: '77905 Block Highway, Hudsonland',
    ),
    const HotlineBox(
      title: 'Labor exchange',
      number: '+ 998 93 553 07 17',
      address: '77905 Block Highway, Hudsonland',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: AppColors.mainScreenBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Manuals',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryBlue,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.r),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 20.r),
              const TextFormFieldMain(),
              SizedBox(height: 20.r),

             // ListView.builder(itemBuilder: itemBuilder),
              SizedBox(height: 120.r),
            ],
          ),
        ),
      ),
    );
  }
}









//    const HotlineBox(
//                 title: 'Federation of professional associations',
//                 number: '+ 998 93 553 07 17',
//                 address: '77905 Block Highway, Hudsonland',
//               ),
//               SizedBox(height: 10.r),
//               const HotlineBox(
//                 title: 'Labor exchange',
//                 number: '+ 998 93 553 07 17',
//                 address: '77905 Block Highway, Hudsonland',
//               ),