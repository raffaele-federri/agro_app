import 'package:agro_app/bloc/cubit/working_status_fetch_data/working_status_cubit.dart';
import 'package:agro_app/constants/app_colors.dart';
import 'package:agro_app/widgets/custom_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import '../../constants/default_text_style.dart';
import '../../routes/app_router.gr.dart';
import '../../widgets/auth_widgets/bottom_nav_bar_auth.dart';
import '../../widgets/auth_widgets/back_button_on_boarding.dart';
import '../../widgets/auth_widgets/working_status_drop.dart';

@RoutePage()
class WorkingStatusWrapper extends StatelessWidget {
  final SignUpCubit cubit;

  const WorkingStatusWrapper({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WorkingStatusCubit()..getData(),
        ),
        BlocProvider.value(value: cubit),
      ],
      child: WorkingStatusPage(),
    );
  }
}

class WorkingStatusPage extends StatelessWidget {
  WorkingStatusPage({super.key});

  final selectedStatusId = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkingStatusCubit, WorkingStatusState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const SizedBox.shrink();
          },
          loading: () {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          error: () {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/setting.png',
                      color: AppColors.lightGrey,
                    ),
                    const CustomText(
                      text: 'Someting went wrong',
                      size: 32,
                      color: AppColors.primaryBlue,
                      // wight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            );
          },
          success: (listOfStatus) {
            // print('LIST OF STATUS : $listStatus');
            final statusesForUi = listOfStatus
                .map((e) => StatusInfo(id: e.id!, name: e.nameUz!))
                .toList();

            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                scrolledUnderElevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: const Row(
                  children: [
                    CustomBackButton(),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavBarAuth(
                index: 4,
                onPressed: () async {
                  final result =
                      await context.read<SignUpCubit>().requestToApi();
                  // print(
                  //     " SIGN UP ===============> ${context.read<SignUpCubit>().state}");
                  if (result && context.mounted) {
                    context.router.push(const MainRoute());
                  }
                },
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const PrimaryTextStyle(
                              text: '   What’s your \nworking status?',
                              size: 40,
                              weight: FontWeight.w800,
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/location_reg.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 33),
                        const Row(
                          children: [
                            PrimaryTextStyle(
                              text: 'Wokring Status',
                              size: 12,
                              weight: FontWeight.w700,
                              color: Color(0xff187CD3),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        ValueListenableBuilder(
                          valueListenable: selectedStatusId,
                          builder: (context, id, _) {
                            selectedStatusId.value = statusesForUi.first.id;
                            return DropdownFormFieldCT(
                              hint: 'Select working status',
                              data: statusesForUi,
                              selectedId: selectedStatusId,
                              onChanged: (statusId) {
                                context
                                    .read<SignUpCubit>()
                                    .setStatusId(statusId);
                              },
                            );
                          },
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            const Icon(
                              Icons.info_outline,
                              color: AppColors.textGrey,
                              size: 24,
                            ),
                            SizedBox(width: 8.w),
                            const CustomText(
                              text: 'Information:',
                              size: 14,
                              color: AppColors.textGrey,
                              weight: FontWeight.w700,
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        const CustomText(
                          maxLines: null,
                          text:
                              "The list of professions associated with the agro-industrial sector allows us to offer specialized guidance and support based on the specific challenges and interests of different roles. It enables us to provide targeted information, such as agricultural best practices, legal regulations, market trends, or technological advancements that are most relevant to the user's field of work. \n \nBy collecting this information, we aim to enhance the user experience by offering customized recommendations, industry-specific updates, and networking opportunities that can foster collaboration and growth within the agricultural community. ",
                          color: AppColors.textGrey,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
