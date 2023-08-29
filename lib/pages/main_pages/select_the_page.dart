import 'package:agro_app/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectThePage extends StatelessWidget {
  const SelectThePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.replace(const OnBoardingRoute());
              },
              child: const Text('Auth pages'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.replace(const MainRoute());
              },
              child: const Text('Main pages'),
            ),
          ],
        ),
      ),
    );
  }
}
