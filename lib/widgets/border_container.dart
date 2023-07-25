import 'package:agro_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderContainer extends StatefulWidget {
  final List<Widget> rowChildren;
  final FocusNode focus;

  const BorderContainer({
    Key? key,
    required this.rowChildren,
    required this.focus,
  }) : super(key: key);

  @override
  State<BorderContainer> createState() => _BorderContainerState();
}

class _BorderContainerState extends State<BorderContainer> {
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    widget.focus.addListener(() {
      setState(() {
        _hasFocus = widget.focus.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    widget.focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      // node: widget.focus,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        height: 40.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: _hasFocus ? AppColors.primaryBlue : AppColors.lightGrey,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.rowChildren,
        ),
      ),
    );
  }
}
