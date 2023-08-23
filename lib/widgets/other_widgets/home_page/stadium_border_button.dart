import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../custom_text.dart';

class StadiumBorderButton extends StatelessWidget {
  final int? width;
  final Widget child;
  final Color? color;
  final void Function()? onPressed;
  final void Function()? onLongPress;
  const StadiumBorderButton({super.key, this.width, required this.child, this.color, this.onPressed, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.r,
      height: 50.r,
      child: ElevatedButton(
        onPressed: onPressed,

        onLongPress: onLongPress,
        style:  ButtonStyle(
          shape: const MaterialStatePropertyAll(
            StadiumBorder(),
          ),
          backgroundColor:
          MaterialStatePropertyAll(color ?? AppColors.primaryError),
          elevation: const MaterialStatePropertyAll(0),
        ),
        child: child,
      ),
    );
  }
}
