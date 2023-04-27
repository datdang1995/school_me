import 'package:auto_route/auto_route.dart';

import '../../../presentation/pages/auth_page.dart';
import '../../../presentation/pages/home_page.dart';
import '../../../presentation/pages/schools_page.dart';
import '../../../presentation/pages/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(generateForDir: ['lib/presentation/pages'])
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SchoolsRoute.page),
      ];
}
