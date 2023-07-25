import 'package:agro_app/pages/login_page.dart';
import 'package:agro_app/widgets/test.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;


import 'bloc/cubit/update_dial.dart';
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
          locale: const Locale('en'),
          localizationsDelegates: const [
            // CountryLocalizations.delegate,
            flc.CountryLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BlocProvider(
            create: (context) => UpdateDialCubit(),
            child:  const SignInPage(),
          ),
        );
      },
    );
  }
}
