import 'package:agro_app/pages/login_page.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;


import 'pages/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 748),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (builder, child) {
        return MaterialApp(
          supportedLocales: flc.supportedLocales.map((e) => Locale(e)),
          localizationsDelegates: const [
            CountryLocalizations.delegate,
            flc.CountryLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            // GlobalMaterialLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate,
          ],
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  const SignInPage(),
        );
      },
    );
  }
}
