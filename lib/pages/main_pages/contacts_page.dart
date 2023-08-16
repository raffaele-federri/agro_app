import 'package:agro_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CustomText(
          text: 'Contacts Page',
          size: 36,
        ),
      ),
    );
  }
}