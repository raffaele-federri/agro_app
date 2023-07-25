import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFormFieldCT extends StatelessWidget {
  final bool isCodeField;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String dial;
  final CountryCode? state;

  TextFormFieldCT({
    super.key,
    this.dial = '',
    this.isCodeField = false,
    this.controller,
    this.textInputType = TextInputType.text,
    this.state,
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
      // textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixText: dial,
      ),
    );
  }
}
