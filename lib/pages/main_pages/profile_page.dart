import 'package:agro_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(
          text: 'Profile Page',
          size: 36,
        ),
      ),
    );
  }
}