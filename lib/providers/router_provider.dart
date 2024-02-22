import 'package:go_router/go_router.dart';
import 'package:my_linkding/providers/api_client_provider.dart';
import 'package:my_linkding/router/paths.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:my_linkding/router/routes.dart';

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
