import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_me/application/app_router/router/app_router.dart';

part 'app_router_provider.g.dart';

@riverpod
AppRouter appRouter(AppRouterRef ref) {
  return AppRouter();
}
