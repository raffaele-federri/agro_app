import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/other_widgets/home_page/hotline_box.dart';
import 'package:agro_app/widgets/other_widgets/home_page/manuals_box.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/blocs/contacts_fetch/contacts_bloc.dart';
import '../../bloc/blocs/rights_fetch/rights_bloc.dart';
import '../../bloc/cubit/simple_cubits/bottom_nav_bar_cubit.dart';

import '../../widgets/other_widgets/home_page/home_page_title_row.dart';
import '../../widgets/other_widgets/general/text_form_field.dart';
import '../../widgets/other_widgets/home_page/no_complains_widget.dart';
import '../../widgets/other_widgets/home_page/shimmer_contact_box.dart';
import '../../widgets/other_widgets/home_page/shimmer_rights_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.r),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              // centerTitle: true,
              expandedHeight: 140,
              collapsedHeight: 140,
              flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    print(constraints.maxWidth);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                         const CustomText(
                          text: 'Good day,',
                          size:  30,
                          weight: FontWeight.w900,
                          color: AppColors.activeColor,
                        ),
                        SizedBox(width: 8.r),
                        const CustomText(
                          text: 'Raffaele',
                          maxLines: 1,
                          size: 30,
                          weight: FontWeight.w500,
                          color: AppColors.primaryBlue,
                        ),
                        SizedBox(width: 12.r),
                        constraints.maxWidth < 340
                            ? const SizedBox()
                            : SvgPicture.asset('assets/images/hello.svg'),
                      ],
                    ),
                    SizedBox(height: 20.r),
                    const TextFormFieldMain(),
                  ],
                );
              }),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  TitleRow(
                    asset: 'assets/icons/manuals.svg',
                    title: 'Manuals',
                    onPressed: () {
                      context.read<BottomNavBarCubit>().changeTab(1);
                    },
                    see: true,
                  ),
                  SizedBox(height: 20.r),
                  BlocBuilder<RightsBloc, RightsState>(
                    buildWhen: (previous, current) {
                      return current.maybeWhen(
                        loadingMore: () => false,
                        loadingMoreError: (_) => false,
                        orElse: () => true,
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const SizedBox.shrink();
                        },
                        loading: () {
                          return const ShimmerRightsBox(itemCount: 2);
                        },
                        error: (message) {
                          return Column(
                            children: [
                              CustomText(
                                text: message,
                                size: 28,
                                color: AppColors.primaryError,
                                weight: FontWeight.w700,
                              ),
                              SizedBox(height: 15.r),
                            ],
                          );
                        },
                        success: (fetchedRights) {
                          return GridView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                            ),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              final right = fetchedRights[index];
                              return ManualsBox(
                                  title: right.titleRu ?? '',
                                  text: right.shortDescriptionRu ?? '');
                            },
                          );
                        },
                      );
                    },
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
                  BlocBuilder<ContactsBloc, ContactsState>(
                    buildWhen: (previous, current) {
                      return current.maybeWhen(
                        loadingMore: () => false,
                        loadingMoreError: (_) => false,
                        orElse: () => true,
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () {
                          return Column(
                            children: List.generate(
                              2,
                                  (index) => const ShimmerContactBox(),
                            ),
                          );
                        },
                        error: (message) {
                          return Column(
                            children: [
                              CustomText(
                                text: message,
                                size: 28,
                                color: AppColors.primaryError,
                                weight: FontWeight.w700,
                              ),
                              SizedBox(height: 15.r),
                              IconButton(
                                onPressed: () {
                                  context.read<ContactsBloc>().add(const ContactsEvent.fetch());
                                },
                                icon: const Icon(Icons.cached),
                              ),
                            ],
                          );
                        },
                        success: (fetchedContacts) {

                          return ListView.separated(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            separatorBuilder: (_, __) => SizedBox(height: 15.r),
                            itemBuilder: (context, index) {
                              final contact = fetchedContacts[index];

                              return HotlineBox(
                                title: contact.titleUz ?? 'No data )',
                                number: ('+${contact.phone}'),
                                address: contact.address,
                              );
                            },
                            itemCount: 2,
                          );
                        },
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  const SizedBox(height: 120),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
