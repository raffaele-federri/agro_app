import 'package:agro_app/constants/app_colors.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFormFieldCT extends StatelessWidget {
  final String hintText;
  final bool isCodeField;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final CountryCode? state;
  final Widget? prefixRow;
  final List<Widget>? suffixRow;

  TextFormFieldCT({
    super.key,
    this.isCodeField = false,
    this.controller,
    this.textInputType = TextInputType.text,
    this.state,
    this.prefixRow,
    this.suffixRow,
    required this.hintText,
  });

  final maskFormatter = MaskTextInputFormatter(
      mask: '## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      inputFormatters:
          isCodeField == false && state != null && state!.code == 'UZ'
              ? [maskFormatter]
              : null,
      obscureText: isCodeField,
      style: const TextStyle(fontSize: 16),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12 , color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        prefixIcon: prefixRow ,
        suffix: Row(
          mainAxisSize: MainAxisSize.min,
          children: suffixRow ?? [],
        ),
      ),
    );
  }
}
