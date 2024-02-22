import 'package:go_router/go_router.dart';
import 'package:linkdy/providers/api_client_provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/router/routes.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    redirect: (context, state) {
      if (ref.watch(apiClientProviderProvider) == null) {
        return RoutesPaths.onboarding;
      }
      return null;
    },
    initialLocation: RoutesPaths.links,
    routes: appRoutes,
    navigatorKey: rootNavigatorKey,
  );
}
