import 'dart:io';

import 'package:agro_app/bloc/blocs/create_complain/create_complain_bloc.dart';
import 'package:agro_app/network/api/api_helper.dart';
import 'package:agro_app/widgets/other_widgets/home_page/rete_selector.dart';
import 'package:agro_app/widgets/other_widgets/home_page/stadium_border_button.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/app_colors.dart';
import '../../../network/api/api_client.dart';
import '../../auth_widgets/text_form_field.dart';
import '../../custom_text.dart';
import '../general/300_hug_button.dart';
import '../general/text_field_title.dart';
import 'edit_info_item.dart';

class CreateComplainBottomSheet extends StatefulWidget {
  // final CreateComplainBloc bloc;

  const CreateComplainBottomSheet({
    super.key,
  });

  @override
  State<CreateComplainBottomSheet> createState() =>
      _CreateComplainBottomSheetState();
}

class _CreateComplainBottomSheetState extends State<CreateComplainBottomSheet> {
  File? _selectedImage;
  File? _selectedImageName;
  String? uploadedImageLink;
  final controllerTitle = TextEditingController();
  final controllerDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateComplainBloc(),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: DraggableScrollableSheet(
            initialChildSize: 0.9,
            maxChildSize: 0.9,
            minChildSize: 0.60,
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
                      text: 'Write Complain',
                      size: 24,
                      weight: FontWeight.w900,
                      color: AppColors.primaryBlue,
                    ),
                    SizedBox(height: 30.r),
                    const TextFieldTitle(title: 'Title'),
                    SizedBox(height: 8.h),
                    TextFormFieldCT(
                      hintText: 'Title',
                      maxLenght: 40,
                      controller: controllerTitle,
                    ),
                    // SizedBox(height: 15.r),
                    const TextFieldTitle(title: 'Address'),
                    SizedBox(height: 8.h),

                    TextFormFieldCT(
                      maxLenght: 15,
                      textInputType: TextInputType.number,
                      hintText: 'Select',
                      onChanged: (text) {},
                    ),
                    Row(
                      children: [
                        const EditInfoItem(title: 'Country'),
                        SizedBox(width: 10.r),
                        const EditInfoItem(title: 'City'),
                      ],
                    ),
                    SizedBox(height: 15.r),
                    const TextFieldTitle(title: 'Rate'),
                    SizedBox(height: 8.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RateSelector(icon: 'assets/images/rate1.png'),
                        RateSelector(icon: 'assets/images/rate2.png'),
                        RateSelector(icon: 'assets/images/rate3.png'),
                        RateSelector(icon: 'assets/images/rate4.png'),
                      ],
                    ),
                    SizedBox(height: 15.r),
                    const TextFieldTitle(title: 'Description'),
                    SizedBox(height: 8.r),
                    TextFormFieldCT(
                      maxLenght: 15,
                      textInputType: TextInputType.number,
                      hintText: 'Write here',
                      controller: controllerDescription,
                    ),
                    SizedBox(height: 15.r),
                    BlocBuilder<CreateComplainBloc, CreateComplainState>(
                      builder: (context, state) {
                        return StadiumBorderButton(
                          color: const Color(0xffF1F2F5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/skripka.svg'),
                              SizedBox(width: 10.r),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    state.maybeWhen(orElse: () {
                                      return const CustomText(
                                        text: 'Add File',
                                        color: AppColors.textGrey,
                                        size: 16,
                                        maxLines: 1,
                                        weight: FontWeight.w700,
                                      );
                                    }, success: (fileName) {
                                      return CustomText(
                                        text: fileName,
                                        color: AppColors.textGrey,
                                        size: 14,
                                        maxLines: 1,
                                        weight: FontWeight.w700,
                                      );
                                    }, loading: () {
                                      return Shimmer.fromColors(
                                        baseColor: AppColors.textGrey,
                                        highlightColor: Colors.white,
                                        child: const CustomText(
                                          text: 'Add File',
                                          // color: AppColors.textGrey,
                                          size: 16,
                                          maxLines: 1,
                                          weight: FontWeight.w700,
                                        ),
                                      );
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          onPressed: () async {
                            final returnedImage = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (!context.mounted) return;
                            context.read<CreateComplainBloc>().add(
                                CreateComplainEvent.uploadImageToServer(
                                    returnedImage!));
                            // _pickImageFromGallery();
                          },
                        );
                      },
                    ),
                    SizedBox(height: 15.r),

                    BlocBuilder<CreateComplainBloc, CreateComplainState>(
                      builder: (context, state) {
                        return HugButton(
                          title: 'Send',
                          onPressed: () async {
                            // final dio = Dio();
                            // dio.interceptors.add(PrettyDioLogger());
                            // dio.options.headers['Authorization'] =
                            //     'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2OTQxNjc1NTYsImV4cCI6MTY5Njc1OTU1NiwidXNlcl9pZCI6MTIsInBlcm1pc3Npb25zIjpbInJlYWRfdXNlciIsInVwZGF0ZV91c2VyIiwiZGVsZXRlX3VzZXIiLCJyZWFkX2NhdGVnb3J5IiwicmVhZF9yaWdodCIsInJlYWRfZGVwYXJ0bWVudCIsInJlYWRfZ3VpZGUiLCJjcmVhdGVfY29tcGxhaW4iLCJyZWFkX2NvbXBsYWluIiwidXBkYXRlX2NvbXBsYWluIl19.tVwnXx-FksPNZwzXuRdPZSBOAM-VRGh-6IyadXbKAWM';
                            // final client = ApiClient(dio);
                            // // final response = await ApiHelper.client?.uploadMedia(_selectedImage!);
                            // final response = await client.uploadMedia(_selectedImage!);
                            //         print(response);
                            // Navigator.of(context).pop();

                            context.read<CreateComplainBloc>().add(
                                CreateComplainEvent.sendNotifications(
                                    controllerTitle.text.trim(),
                                    controllerDescription.text.trim(), ''));
                          },
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

  Future _pickImageFromGallery() async {
    final returnedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(returnedImage!.path);
      _selectedImageName = File(returnedImage.name);
    });
  }
}
