import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../general/text_field_title.dart';

class EditInfoItem extends StatelessWidget {
  final String title;


  const EditInfoItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldTitle(title: title),
          SizedBox(height: 8.r),
          TextFormField(
            decoration: InputDecoration(
              hintText: title,
              hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400),
              contentPadding: const EdgeInsets.symmetric(horizontal: 7),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
            ),
          ),
        ],
      ),
    );
  }
}
