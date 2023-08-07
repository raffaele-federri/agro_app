

import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AddressRoute.page),
    AutoRoute(page: AgeRoute.page),
    AutoRoute(page: GenderAndNameRoute.page),
    AutoRoute(page: SignInWrapper.page),
    AutoRoute(page: OnBoardingRoute.page , initial: true),
    AutoRoute(page: SignUpWrapper.page),
    AutoRoute(page: WorkingStatusRoute.page),
    AutoRoute(page: MainRoute.page),
  ];
}