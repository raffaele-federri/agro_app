import 'package:flutter/material.dart';

import 'back_button_on_boarding.dart';

class AppBarBack extends StatelessWidget {
  const AppBarBack({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(children: [
        CustomBackButton(),
      ],),
    );
  }
}
