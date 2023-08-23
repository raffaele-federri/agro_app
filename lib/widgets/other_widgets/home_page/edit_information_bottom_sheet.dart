import 'package:agro_app/bloc/cubit/simple_cubits/update_dial.dart';
import 'package:agro_app/core/extensions.dart';
import 'package:agro_app/widgets/other_widgets/general/300_hug_button.dart';
import 'package:agro_app/widgets/other_widgets/home_page/profile_info_box.dart';
import 'package:auto_route/annotations.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../bloc/cubit/simple_cubits/gender_chooser.dart';
import '../../../bloc/cubit/working_status_fetch_data/working_status_cubit.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/default_text_style.dart';
import '../../auth_widgets/text_form_field.dart';
import '../../auth_widgets/working_status_drop.dart';
import '../../custom_text.dart';
import '../general/text_field_title.dart';
import 'edit_info_item.dart';


class EditInformationBottomSheet extends StatelessWidget {
  EditInformationBottomSheet({super.key});

  final countryPicker = const FlCountryCodePicker();
  final _nameKey = GlobalKey<FormState>();
  final _numberKey = GlobalKey<FormState>();
  final selectedStatusId = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UpdateDialCubit(),
        ),
        BlocProvider(
          create: (context) => GenderChooser(),
        ),
        BlocProvider(
          create: (context) => WorkingStatusCubit()..getData(),
        ),
      ],
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: DraggableScrollableSheet(
            initialChildSize: 0.87,
            maxChildSize: 0.87,
            minChildSize: 0.77,
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
                      text: 'Edit Information',
                      size: 24,
                      weight: FontWeight.w900,
                      color: AppColors.primaryBlue,
                    ),
                    SizedBox(height: 30.r),
                    const TextFieldTitle(title: 'Full name'),
                    SizedBox(height: 8.h),
                    Form(
                      key: _nameKey,
                      child: TextFormFieldCT(
                        validator: (val) {
                          if (val == '') {
                            return 'This field is required';
                          }
                        },
                        hintText: 'Enter your name',
                        maxLenght: 40,
                        onChanged: (text) {
                          if (_nameKey.currentState!.validate()) {
                          } else {}
                        },
                      ),
                    ),
                    // SizedBox(height: 15.r),
                    const TextFieldTitle(title: 'Phone Number'),
                    SizedBox(height: 8.h),
                    BlocBuilder<UpdateDialCubit, CountryCode>(
                      builder: (context, state) {
                        return Form(
                          key: _numberKey,
                          child: TextFormFieldCT(
                            validator: (val) {
                              if (!val!.isValidPhone) {
                                return 'Enter valid number';
                              }
                            },
                            maxLenght: 15,
                            state: state,
                            textInputType: TextInputType.number,
                            hintText: 'Enter your phone number',
                            prefixRow: Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 26,
                                    width: 27,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: state.flagImage(fit: BoxFit.cover),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final code = await countryPicker
                                          .showPicker(context: context);
                                      if (code != null && context.mounted) {
                                        context
                                            .read<UpdateDialCubit>()
                                            .updateCountryCode(code);
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  Text(
                                    state.dialCode,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            onChanged: (text) {
                              if (_numberKey.currentState!.validate()) {
                                // context.read<SignUpCubit>().setPhone(text);
                              } else {
                                // context.read<SignUpCubit>().setPhone('');
                              }
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15.r),
                    BlocBuilder<GenderChooser, int?>(
                      builder: (context, state) {
                        return Row(
                          children: [
                            const EditInfoItem(title: 'Age'),
                            SizedBox(width: 10.r),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TextFieldTitle(title: 'Gender'),
                                      SizedBox(height: 8.r),
                                      InkWell(
                                        onTap: () {
                                          context
                                              .read<GenderChooser>()
                                              .changeTab(0);
                                        },
                                        child: InfoBox(
                                          width: 44,
                                          height: 48.r,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          color: state == 0
                                              ? Colors.black45
                                              : AppColors.lightGrey,
                                          child: SvgPicture.asset(
                                              'assets/icons/male_symbol.svg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.r),
                                  Column(
                                    children: [
                                      SizedBox(height: 25.r),
                                      InkWell(
                                        onTap: () {
                                          context
                                              .read<GenderChooser>()
                                              .changeTab(1);
                                        },
                                        child: InfoBox(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          width: 44,
                                          height: 48.r,
                                          color: state == 1
                                              ? Colors.black45
                                              : AppColors.lightGrey,
                                          child: SvgPicture.asset(
                                              'assets/icons/female_symbol.svg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 15.r),
                    Row(
                      children: [
                        const EditInfoItem(title: 'Country'),
                        SizedBox(width: 10.r),
                        const EditInfoItem(title: 'City'),
                      ],
                    ),
                    SizedBox(height: 15.r),
                    BlocBuilder<WorkingStatusCubit, WorkingStatusState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () {
                            return const SizedBox.shrink();
                          },
                          loading: () {
                            return const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [CircularProgressIndicator()]);
                          },
                          error: () {
                            return Center(
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
                            );
                          },
                          success: (listOfStatus) {
                            final statusesForUi = listOfStatus
                                .map((e) =>
                                    StatusInfo(id: e.id!, name: e.nameUz!))
                                .toList();
                            return Column(
                              children: [
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
                                    selectedStatusId.value =
                                        statusesForUi.first.id;
                                    return DropdownFormFieldCT(
                                      hint: 'Select working status',
                                      data: statusesForUi,
                                      selectedId: selectedStatusId,
                                      onChanged: (statusId) {},
                                    );
                                  },
                                ),
                                SizedBox(height: 15.h),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 15.r),
                    HugButton(
                      title: 'Save',
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
      ),
    );
  }
}
