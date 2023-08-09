import 'package:agro_app/pages/address_page.dart';
import 'package:agro_app/pages/age_page.dart';
import 'package:agro_app/pages/gender_and_name_page_dart.dart';
import 'package:agro_app/pages/login_page.dart';
import 'package:agro_app/pages/on_boarding_page.dart';
import 'package:agro_app/pages/working_status_page.dart';
import 'package:agro_app/routes/app_router.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart' as flc;

import 'bloc/bloc_observer.dart';
import 'bloc/cubit/update_dial.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // useInheritedMediaQuery: true,
      designSize: const Size(360, 748),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (builder, child) {
        AppRouter appRouter = AppRouter();
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
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
        );
      },
    );
  }
}
