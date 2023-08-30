import 'package:agro_app/bloc/cubit/contacts_fetch/contacts_fetch_cubit.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/app_colors.dart';
import '../../widgets/other_widgets/general/text_form_field.dart';
import '../../widgets/other_widgets/home_page/hotline_box.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsFetchCubit()..loadData(),
      child: Builder(builder: (context) {
        return Scaffold(
          // extendBodyBehindAppBar: true,
          backgroundColor: AppColors.mainScreenBackgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Contacts',
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
            child: BlocBuilder<ContactsFetchCubit, ContactsFetchState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const CustomText(
                      text: 'Something went wrong :(',
                      size: 28,
                      color: AppColors.primaryError,
                      weight: FontWeight.w700,
                    );
                  },
                  error: (message) {
                    return CustomText(
                      text: message,
                      size: 28,
                      color: AppColors.primaryError,
                      weight: FontWeight.w700,
                    );
                  },
                  success: (fetchedContacts) {
                    print('FETCHED CONTACTS ==========> $fetchedContacts');
                    return Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        // controller: ScrollController()..addListener(() {
                        //   context.read<ContactsFetchCubit>().loadMoreData();
                        //
                        // }),
                        itemBuilder: (context, index) {
                          final contact = fetchedContacts[index];
                          return Column(
                            children: [
                              HotlineBox(
                                title: contact.titleUz,
                                number: ('+${contact.phone}'),
                                address: contact.address,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 9),
                                margin: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: AppColors.lightGrey,
                                      offset: Offset(0.0, 0.1), //(x,y)
                                      blurRadius: 4.0,
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 0.13368984.sh,
                                width: double.infinity,
                                child: Shimmer.fromColors(
                                    baseColor: Colors.grey.shade300,
                                    highlightColor: Colors.grey.shade100,
                                    enabled: true,
                                    child:  SingleChildScrollView(
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          // BannerPlaceholder(),
                                          // TitlePlaceholder(width: double.infinity),
                                          // SizedBox(height: 16.0),
                                          // ContentPlaceholder(
                                          //   lineType: ContentLineType.threeLines,
                                          // ),
                                          // SizedBox(height: 16.0),
                                          // TitlePlaceholder(width: 200.0),
                                          // SizedBox(height: 16.0),
                                          // ContentPlaceholder(
                                          //   lineType: ContentLineType.twoLines,
                                          // ),
                                          // SizedBox(height: 16.0),
                                          // TitlePlaceholder(width: 200.0),
                                          // SizedBox(height: 16.0),
                                          // ContentPlaceholder(
                                          //   lineType: ContentLineType.twoLines,
                                          // ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          );
                        },
                        itemCount: fetchedContacts.length,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      }),
    );
  }
}

// const HotlineBox(
//     title: 'Federation of professional associations',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Labor exchange',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Federation of professional associations',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Labor exchange',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Federation of professional associations',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Labor exchange',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Federation of professional associations',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 10.r),
// const HotlineBox(
//     title: 'Labor exchange',
//     number: '+ 998 93 553 07 17',
//     address: '77905 Block Highway, Hudsonland'),
// SizedBox(height: 120.r),
