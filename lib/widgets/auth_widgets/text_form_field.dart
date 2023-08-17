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
  final Widget? suffixRow;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  TextFormFieldCT({
    super.key,
    this.isCodeField = false,
    this.controller,
    this.textInputType = TextInputType.text,
    this.state,
    this.prefixRow,
    this.suffixRow,
    required this.hintText,
    this.onChanged,
    this.validator,
  });

  final maskFormatter = MaskTextInputFormatter(
      mask: '## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('*** ${context.size}');
    });
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      keyboardType: textInputType,
      inputFormatters:
          isCodeField == false && state != null && state!.code == 'UZ'
              ? [maskFormatter]
              : null,
      obscureText: isCodeField,
      obscuringCharacter: '❤',
      // obscuringCharacter: '⚫'️️️,

      style:  const TextStyle(fontSize: 16 , height: 1.185),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(vertical: -1, horizontal: 7),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        prefixIcon: prefixRow,
        suffixIcon: suffixRow,


      ),
    );
  }
}



