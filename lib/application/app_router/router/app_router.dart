import 'package:auto_route/auto_route.dart';

import '../../../presentation/pages/home_page.dart';
import '../../../presentation/pages/schools_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(generateForDir: ['lib/presentation/pages'])
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: SchoolsRoute.page),
      ];
}
