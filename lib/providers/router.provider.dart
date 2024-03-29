import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/router/routes.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/providers/api_client.provider.dart';

part 'router.provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    redirect: (context, state) {
      if (ref.watch(apiClientProvider) == null) {
        return RoutesPaths.onboarding;
      }
      return null;
    },
    initialLocation: RoutesPaths.bookmarks,
    routes: appRoutes,
    navigatorKey: rootNavigatorKey,
  );
}
