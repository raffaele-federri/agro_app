// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agro_app/bloc/cubit/sign_up/sign_up_cubit.dart' as _i14;
import 'package:agro_app/pages/auth_pages/address_page.dart' as _i1;
import 'package:agro_app/pages/auth_pages/age_page.dart' as _i2;
import 'package:agro_app/pages/auth_pages/gender_and_name_page_dart.dart'
    as _i4;
import 'package:agro_app/pages/auth_pages/login_page.dart' as _i9;
import 'package:agro_app/pages/auth_pages/on_boarding_page.dart' as _i7;
import 'package:agro_app/pages/auth_pages/sign_up_page.dart' as _i10;
import 'package:agro_app/pages/auth_pages/working_status_page.dart' as _i11;
import 'package:agro_app/pages/main_pages/contacts_page.dart' as _i3;
import 'package:agro_app/pages/main_pages/select_the_page.dart' as _i8;
import 'package:agro_app/pages/main_screen.dart' as _i5;
import 'package:agro_app/widgets/test.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AddressRouteWrapper.name: (routeData) {
      final args = routeData.argsAs<AddressRouteWrapperArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddressPageWrapper(
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
    AgeRoute.name: (routeData) {
      final args = routeData.argsAs<AgeRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AgePage(
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
    ContactsWrapper.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ContactsWrapper(),
      );
    },
    GenderAndNameRoute.name: (routeData) {
      final args = routeData.argsAs<GenderAndNameRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.GenderAndNamePage(
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    MyForm.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyForm(),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingPage(),
      );
    },
    SelectTheRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SelectThePage(),
      );
    },
    SignInWrapper.name: (routeData) {
      final args = routeData.argsAs<SignInWrapperArgs>(
          orElse: () => const SignInWrapperArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SignInWrapper(key: args.key),
      );
    },
    SignUpWrapper.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignUpWrapper(),
      );
    },
    WorkingStatusWrapper.name: (routeData) {
      final args = routeData.argsAs<WorkingStatusWrapperArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WorkingStatusWrapper(
          key: args.key,
          cubit: args.cubit,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddressPageWrapper]
class AddressRouteWrapper extends _i12.PageRouteInfo<AddressRouteWrapperArgs> {
  AddressRouteWrapper({
    _i13.Key? key,
    required _i14.SignUpCubit cubit,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AddressRouteWrapper.name,
          args: AddressRouteWrapperArgs(
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'AddressRouteWrapper';

  static const _i12.PageInfo<AddressRouteWrapperArgs> page =
      _i12.PageInfo<AddressRouteWrapperArgs>(name);
}

class AddressRouteWrapperArgs {
  const AddressRouteWrapperArgs({
    this.key,
    required this.cubit,
  });

  final _i13.Key? key;

  final _i14.SignUpCubit cubit;

  @override
  String toString() {
    return 'AddressRouteWrapperArgs{key: $key, cubit: $cubit}';
  }
}

/// generated route for
/// [_i2.AgePage]
class AgeRoute extends _i12.PageRouteInfo<AgeRouteArgs> {
  AgeRoute({
    _i13.Key? key,
    required _i14.SignUpCubit cubit,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AgeRoute.name,
          args: AgeRouteArgs(
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'AgeRoute';

  static const _i12.PageInfo<AgeRouteArgs> page =
      _i12.PageInfo<AgeRouteArgs>(name);
}

class AgeRouteArgs {
  const AgeRouteArgs({
    this.key,
    required this.cubit,
  });

  final _i13.Key? key;

  final _i14.SignUpCubit cubit;

  @override
  String toString() {
    return 'AgeRouteArgs{key: $key, cubit: $cubit}';
  }
}

/// generated route for
/// [_i3.ContactsWrapper]
class ContactsWrapper extends _i12.PageRouteInfo<void> {
  const ContactsWrapper({List<_i12.PageRouteInfo>? children})
      : super(
          ContactsWrapper.name,
          initialChildren: children,
        );

  static const String name = 'ContactsWrapper';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.GenderAndNamePage]
class GenderAndNameRoute extends _i12.PageRouteInfo<GenderAndNameRouteArgs> {
  GenderAndNameRoute({
    _i13.Key? key,
    required _i14.SignUpCubit cubit,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          GenderAndNameRoute.name,
          args: GenderAndNameRouteArgs(
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'GenderAndNameRoute';

  static const _i12.PageInfo<GenderAndNameRouteArgs> page =
      _i12.PageInfo<GenderAndNameRouteArgs>(name);
}

class GenderAndNameRouteArgs {
  const GenderAndNameRouteArgs({
    this.key,
    required this.cubit,
  });

  final _i13.Key? key;

  final _i14.SignUpCubit cubit;

  @override
  String toString() {
    return 'GenderAndNameRouteArgs{key: $key, cubit: $cubit}';
  }
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyForm]
class MyForm extends _i12.PageRouteInfo<void> {
  const MyForm({List<_i12.PageRouteInfo>? children})
      : super(
          MyForm.name,
          initialChildren: children,
        );

  static const String name = 'MyForm';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnBoardingPage]
class OnBoardingRoute extends _i12.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelectThePage]
class SelectTheRoute extends _i12.PageRouteInfo<void> {
  const SelectTheRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SelectTheRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectTheRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignInWrapper]
class SignInWrapper extends _i12.PageRouteInfo<SignInWrapperArgs> {
  SignInWrapper({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SignInWrapper.name,
          args: SignInWrapperArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInWrapper';

  static const _i12.PageInfo<SignInWrapperArgs> page =
      _i12.PageInfo<SignInWrapperArgs>(name);
}

class SignInWrapperArgs {
  const SignInWrapperArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SignInWrapperArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.SignUpWrapper]
class SignUpWrapper extends _i12.PageRouteInfo<void> {
  const SignUpWrapper({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpWrapper.name,
          initialChildren: children,
        );

  static const String name = 'SignUpWrapper';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.WorkingStatusWrapper]
class WorkingStatusWrapper
    extends _i12.PageRouteInfo<WorkingStatusWrapperArgs> {
  WorkingStatusWrapper({
    _i13.Key? key,
    required _i14.SignUpCubit cubit,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          WorkingStatusWrapper.name,
          args: WorkingStatusWrapperArgs(
            key: key,
            cubit: cubit,
          ),
          initialChildren: children,
        );

  static const String name = 'WorkingStatusWrapper';

  static const _i12.PageInfo<WorkingStatusWrapperArgs> page =
      _i12.PageInfo<WorkingStatusWrapperArgs>(name);
}

class WorkingStatusWrapperArgs {
  const WorkingStatusWrapperArgs({
    this.key,
    required this.cubit,
  });

  final _i13.Key? key;

  final _i14.SignUpCubit cubit;

  @override
  String toString() {
    return 'WorkingStatusWrapperArgs{key: $key, cubit: $cubit}';
  }
}
