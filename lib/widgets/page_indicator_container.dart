import 'package:flutter/material.dart';

class PageIndicatorContainer extends StatelessWidget {
  final double? rotate;
  const PageIndicatorContainer({
    super.key,
    this.rotate,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotate ?? 0,
      child: Container(
        height: 13,
        width: 13,
        decoration: BoxDecoration(
          color: rotate == 0.76
              ? const Color(0xff00416A)
              : const Color(0xffCCE5FF),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
