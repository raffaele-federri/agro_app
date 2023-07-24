import 'package:agro_app/constants/default_text_style.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // final TextEditingController _textEditingController = TextEditingController();
  // late CountryCode selectedCode;

  final countryPicker = const FlCountryCodePicker();

  /// With custom params.
  final countryPickerWithParams = const FlCountryCodePicker(
    localize: true,
    showDialCode: true,
    showSearchBar: true,
  );
  late CountryCode selectedCode =
      CountryCode(name: 'Uzbekistan', code: 'UZ', dialCode: '+998');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 39.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: 'Welcome',
                      size: 40,
                      weight: FontWeight.w800,
                    ),
                  ],
                ),
                SizedBox(height: 83.h),
                Column(
                  children: [
                    const Row(
                      children: [
                        DefaultText(
                          text: 'Phone Number',
                          size: 12,
                          weight: FontWeight.w700,
                          color: Color(0xff187CD3),
                        )
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 2,
                      ),
                      height: 40.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red
                            // color: const Color(0xffEBEFF2),
                            ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 26,
                            width: 27,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.network(
                              selectedCode.flagUri,
                              fit: BoxFit.fill,
                            ),
                          ),
                          // CountryCodePicker(
                          //   onChanged: (code) {
                          //     setState(() {
                          //       _selectedCode = code;
                          //     });
                          //   },
                          //   flagDecoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(5),
                          //   ),
                          //   flagWidth: 50,
                          //   initialSelection: 'UZ',
                          //   favorite: const ['+998'
                          //       ''],
                          //   showCountryOnly: false,
                          //   showOnlyCountryWhenClosed: false,
                          //   alignLeft: false,
                          // ),
                          // SizedBox(width: 10.w),
                          InkWell(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);
                              if (code != null) {
                                setState(() {
                                  selectedCode = code;
                                });
                                print('=======> CT CODE  ${code?.dialCode}');
                              }
                            },
                            child: const Icon(Icons.arrow_drop_down),
                          ),
                          Text(selectedCode.dialCode),
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    const Row(
                      children: [
                        DefaultText(
                          text: 'Password',
                          size: 12,
                          weight: FontWeight.w700,
                          color: Color(0xff187CD3),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(7),
                      height: 40.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red
                            // color: const Color(0xffEBEFF2),
                            ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Icon(Icons.visibility)
                        ],
                      ),
                    ),
                    SizedBox(height: 7.h),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DefaultText(
                          text: 'Forgot password ?',
                          size: 12,
                          color: Color(0xff187CD3),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 125.h),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: Text(
                      'Login',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
