import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class TextFormFieldMain extends StatelessWidget {
  const TextFormFieldMain({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search for manuals, contacts',
        hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400),
        contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:  const BorderSide(
            color: Colors.red,
            width: 10,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide:  const BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}
