import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
         AutoRoute(page: ContactsWrapper.page),
         AutoRoute(page: RightsWrapper.page),
        AutoRoute(page: AddressRouteWrapper.page),
        AutoRoute(page: AgeRoute.page),
        AutoRoute(page: GenderAndNameRoute.page),
        AutoRoute(page: SignInWrapper.page),
        AutoRoute(page: OnBoardingRoute.page),
        AutoRoute(page: MyForm.page),
        AutoRoute(page: SignUpWrapper.page),
        AutoRoute(page: WorkingStatusWrapper.page),
        AutoRoute(page: SelectTheRoute.page, initial: true),
        AutoRoute(page: MainRoute.page),
      ];
}
