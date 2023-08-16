import 'package:agro_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RightsPage extends StatelessWidget {
  const RightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(
          text: 'Rights Page',
          size: 36,
        ),
      ),
    );
  }
}