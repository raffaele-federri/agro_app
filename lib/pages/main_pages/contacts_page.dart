import 'package:agro_app/bloc/blocs/contacts_bloc.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:agro_app/widgets/other_widgets/home_page/shimmer_contact_box.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../../widgets/other_widgets/home_page/hotline_box.dart';

@RoutePage()
class ContactsWrapper extends StatelessWidget {
  const ContactsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactsBloc()..add(const ContactsEvent.fetch()),
        ),
      ],
      child: const ContactsPage(),
    );
  }
}

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_listener);
  }

  void _listener() {
    if (scrollController.position.userScrollDirection ==
            ScrollDirection.reverse &&
        scrollController.offset >=
            scrollController.position.maxScrollExtent + 50) {
      context.read<ContactsBloc>().add(const ContactsEvent.fetchMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: Text(
              'Contacts',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryBlue,
              ),
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                              5,
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
                          if (kDebugMode) {
                            print(
                              'FETCHED CONTACTS ==========> $fetchedContacts');
                          }
                          return Flexible(
                            child: ListView.separated(
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
                              itemCount: fetchedContacts.length,
                            ),
                          );
                        },
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  SizedBox(height: 15.r),
                  BlocBuilder<ContactsBloc, ContactsState>(
                    buildWhen: (previous, current) {
                      return current.maybeWhen(
                        loadingMore: () => true,
                        loadingMoreError: (_) => true,
                        success: (_) => true,
                        orElse: () => false,
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        loadingMore: () {
                          return const ShimmerContactBox();
                        },
                        loadingMoreError: (message) {
                          return Container();
                        },
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                  SizedBox(height: 120.r),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    scrollController.removeListener(_listener);
    scrollController.dispose();
    super.dispose();
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
