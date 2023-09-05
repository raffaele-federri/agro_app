import 'package:agro_app/bloc/blocs/rights_fetch/rights_bloc.dart';
import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/blocs/contacts_fetch/contacts_bloc.dart';
import '../../widgets/other_widgets/general/text_form_field.dart';
import '../../widgets/other_widgets/home_page/manuals_box.dart';
import '../../widgets/other_widgets/home_page/shimmer_contact_box.dart';

@RoutePage()
class RightsWrapper extends StatelessWidget {
  const RightsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RightsBloc()..add(const RightsEvent.fetch()),
        ),
      ],
      child: const RightsPage(),
    );
  }
}

class RightsPage extends StatefulWidget {
  const RightsPage({super.key});

  @override
  State<RightsPage> createState() => _RightsPageState();
}

class _RightsPageState extends State<RightsPage> {
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
      context.read<RightsBloc>().add(const RightsEvent.fetchMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainScreenBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.r),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                // centerTitle: true,
                expandedHeight: 140,
                collapsedHeight: 140,
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Manuals',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                    SizedBox(height: 20.r),
                    const TextFormFieldMain(),
                    // SizedBox(height: 10.r),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                                    context
                                        .read<ContactsBloc>()
                                        .add(const ContactsEvent.fetch());
                                  },
                                  icon: const Icon(Icons.cached),
                                ),
                              ],
                            );
                          },
                          success: (fetchedRights) {
                            return GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                              ),
                              itemCount: fetchedRights.length,
                              itemBuilder: (context, index) {
                                final right = fetchedRights[index];
                                return ManualsBox(title: right.titleRu ?? '', text: right.shortDescriptionRu ?? '');
                              },
                            );
                          },
                        );
                      },
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

  @override
  void dispose() {
    scrollController.removeListener(_listener);
    scrollController.dispose();
    super.dispose();
  }
}
