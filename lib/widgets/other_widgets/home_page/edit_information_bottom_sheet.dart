import 'package:agro_app/bloc/cubit/simple_cubits/update_dial.dart';
import 'package:agro_app/core/extensions.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../auth_widgets/text_form_field.dart';
import '../../custom_text.dart';
import '../general/text_field_title.dart';

class EditInformationBottomSheet extends StatelessWidget {
  EditInformationBottomSheet({super.key});

  final countryPicker = const FlCountryCodePicker();
  final _nameKey = GlobalKey<FormState>();
  final _numberKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateDialCubit(),
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
                    const TextFieldTitle(title:'Phone Number'),
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
