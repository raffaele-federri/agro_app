import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RateSelector extends StatelessWidget {
  final String icon;

  const RateSelector({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.064171123.sh,
      width: 0.1875.sw,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe5e5e5),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        color: const Color(0xffF1F2F5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 21,
            width: 21,
            child: Image.asset(icon),
          ),
        ],
      ),
    );
  }
}
