import 'package:agro_app/core/extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/cubit/address_data_fetch/address_data_fetch_cubit.dart';
import '../../bloc/cubit/sign_up/sign_up_cubit.dart';
import '../../constants/app_colors.dart';
import '../../constants/default_text_style.dart';

import '../../routes/app_router.gr.dart';
import '../../widgets/auth_widgets/dropdown_form_field.dart';
import '../../widgets/auth_widgets/text_form_field.dart';
import '../../widgets/auth_widgets/back_button_on_boarding.dart';
import '../../widgets/auth_widgets/bottom_nav_bar_auth.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/other_widgets/general/text_field_title.dart';

@RoutePage()
class AddressPageWrapper extends StatelessWidget {
  final SignUpCubit cubit;

  const AddressPageWrapper({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddressDataFetchCubit()..getData(),
        ),
        BlocProvider.value(value: cubit),
      ],
      child: AddressPage(),
    );
  }
}

class AddressPage extends StatelessWidget {
  AddressPage({super.key});

  final selectedCountryId = ValueNotifier(-1);
  final selectedRegionId = ValueNotifier(-1);
  final selectedCityId = ValueNotifier(-1);
  final selectedDistrictId = ValueNotifier(-1);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressDataFetchCubit, AddressDataFetchState>(
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
                      text: 'Something went wrong',
                      size: 32,
                      color: AppColors.primaryBlue,
                      // wight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            );
          },
          success: (data) {
            final countriesForUI = data
                .map((e) => AddressInfo(id: e.id!, name: e.nameUz!))
                .toList();
            if (countriesForUI.isNotEmpty) {
              selectedCountryId.value = countriesForUI.first.id;
              Future.delayed(const Duration(seconds: 10));
            }
            return BlocBuilder<SignUpCubit, SignUpState>(
              builder: (context, state) {
                return Scaffold(
                  // endDrawerEnableOpenDragGesture: false,
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
                    index: 3,
                    onPressed: state.whenOrNull(
                      settingUp: (data) => data.isThirdStepFilled
                          ? () {
                              context.router.push(
                                WorkingStatusWrapper(
                                    cubit: context.read<SignUpCubit>()
                                    // cubit: context.read<SignUpCubit>(),
                                    ),
                              );
                            }
                          : null,
                    ),
                  ),
                  body: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: KeyboardVisibilityBuilder(
                          builder: (context, isOpened) {
                        return SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          reverse: isOpened,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  const PrimaryTextStyle(
                                    text: 'Where are you from ?',
                                    size: 30,
                                    weight: FontWeight.w800,
                                  ),
                                  SizedBox(
                                    height: 25.h,
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
                              SizedBox(height: 15.h),
                              const TextFieldTitle(title: 'Country'),
                              SizedBox(height: 8.h),
                              ValueListenableBuilder(
                                  valueListenable: selectedCountryId,
                                  builder: (context, id, _) {
                                    return id.isNegative
                                        ? const SizedBox.shrink()
                                        : AddressDropdownView(
                                            data: countriesForUI,
                                            hint: 'Select the country',
                                            selectedId: selectedCountryId,
                                          );
                                  }),
                              SizedBox(height: 15.h),
                              ValueListenableBuilder(
                                valueListenable: selectedCountryId,
                                builder: (context, id, _) {
                                  if (id.isNegative) {
                                    selectedRegionId.value = -1;

                                    return const SizedBox.shrink();
                                  }
                                  final country =
                                      data.find((element) => element.id == id);

                                  final regionsData = country!.regions;
                                  if (regionsData == null ||
                                      regionsData.isEmpty) {
                                    selectedRegionId.value = -1;
                                    Future.delayed(const Duration(seconds: 10));
                                    return const SizedBox.shrink();
                                  }

                                  final regionsForUI = regionsData
                                      .map((e) => AddressInfo(
                                          id: e.id!, name: e.nameUz!))
                                      .toList();

                                  selectedRegionId.value =
                                      regionsForUI.first.id;

                                  return Column(
                                    children: [
                                      const TextFieldTitle(title: 'Region'),
                                      SizedBox(height: 8.h),
                                      AddressDropdownView(
                                        data: regionsForUI,
                                        hint: 'Select the region',
                                        selectedId: selectedRegionId,
                                        onChanged: (regionId) {
                                          context
                                              .read<SignUpCubit>()
                                              .setRegionId(regionId);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                              ValueListenableBuilder(
                                  valueListenable: selectedCountryId,
                                  builder: (context, countryID, _) {
                                    return ValueListenableBuilder(
                                      valueListenable: selectedRegionId,
                                      builder: (context, id, _) {
                                        if (countryID.isNegative ||
                                            id.isNegative) {
                                          selectedCityId.value = -1;
                                          Future.delayed(
                                              const Duration(seconds: 10));
                                          return const SizedBox.shrink();
                                        }

                                        final country = data.find((element) =>
                                            element.id == countryID);
                                        final region = country!.regions!.find(
                                            (element) => element.id == id);
                                        final citiesData = region!.cities;

                                        if (citiesData == null ||
                                            citiesData.isEmpty) {
                                          selectedCityId.value = -1;

                                          return const SizedBox.shrink();
                                        }
                                        final citiesForUI = citiesData
                                            .map((e) => AddressInfo(
                                                id: e.id!, name: e.nameUz!))
                                            .toList();
                                        selectedCityId.value =
                                            citiesForUI.first.id;
                                        Future.delayed(
                                            const Duration(seconds: 10));
                                        return Column(
                                          children: [
                                            SizedBox(height: 15.h),
                                            const TextFieldTitle(title: 'City'),
                                            SizedBox(height: 8.h),
                                            AddressDropdownView(
                                              data: citiesForUI,
                                              hint: 'Select the city',
                                              selectedId: selectedCityId,
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }),
                              ValueListenableBuilder(
                                  valueListenable: selectedCountryId,
                                  builder: (context, countryID, _) {
                                    return ValueListenableBuilder(
                                        valueListenable: selectedRegionId,
                                        builder: (context, regionId, _) {
                                          return ValueListenableBuilder(
                                            valueListenable: selectedCityId,
                                            builder: (context, id, _) {
                                              if (countryID.isNegative ||
                                                  regionId.isNegative ||
                                                  id.isNegative) {
                                                selectedDistrictId.value = -1;
                                                Future.delayed(const Duration(
                                                    seconds: 10));
                                                return const SizedBox.shrink();
                                              }
                                              final country = data.find(
                                                  (element) =>
                                                      element.id == countryID);
                                              final region = country!.regions!
                                                  .find((element) =>
                                                      element.id == regionId);
                                              final city = region!.cities!
                                                  .firstWhere((element) =>
                                                      element.id == id);
                                              final districtData =
                                                  city.districts;

                                              if (districtData == null ||
                                                  districtData.isEmpty) {
                                                selectedDistrictId.value = -1;
                                                Future.delayed(const Duration(
                                                    seconds: 10));
                                                return const SizedBox.shrink();
                                              }

                                              final districtForUI = districtData
                                                  .map((e) => AddressInfo(
                                                      id: e.id!,
                                                      name: e.nameUz!))
                                                  .toList();
                                              selectedDistrictId.value =
                                                  districtForUI.first.id;

                                              context
                                                  .read<SignUpCubit>()
                                                  .setDistrictId(
                                                      selectedDistrictId.value);
                                              return Column(
                                                children: [
                                                  SizedBox(height: 15.h),
                                                  const TextFieldTitle(title: 'District'),
                                                  SizedBox(height: 8.h),
                                                  AddressDropdownView(
                                                    data: districtForUI,
                                                    hint: 'Select the city',
                                                    selectedId:
                                                        selectedDistrictId,
                                                    onChanged: (districtId) {
                                                      context
                                                          .read<SignUpCubit>()
                                                          .setDistrictId(
                                                              districtId);
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        });
                                  }),
                              SizedBox(height: 15.h),
                              const TextFieldTitle(title: 'Address'),
                              SizedBox(height: 8.h),
                              TextFormFieldCT(
                                hintText: 'Type your address',
                              ),
                              if (isOpened) 0.40.sh.verticalSpace
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
