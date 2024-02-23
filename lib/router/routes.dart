import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:linkdy/screens/links/ui/links.dart';
import 'package:linkdy/screens/onboarding/ui/onboarding.dart';
import 'package:linkdy/screens/search/ui/search.dart';
import 'package:linkdy/screens/settings/ui/customization/customization.dart';
import 'package:linkdy/screens/settings/ui/settings.dart';
import 'package:linkdy/screens/webview/ui/webview.dart';
import 'package:linkdy/widgets/layout.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/router/paths.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final linksNavigatorKey = GlobalKey<NavigatorState>();
final searchNavigatorKey = GlobalKey<NavigatorState>();
final settingsNavigatorKey = GlobalKey<NavigatorState>();

final List<RouteBase> appRoutes = [
  GoRoute(
    path: RoutesPaths.onboarding,
    builder: (context, state) => const Onboarding(),
  ),
  GoRoute(
    path: RoutesPaths.webview,
    builder: (context, state) => WebView(bookmark: state.extra as Bookmark),
  ),
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) => Layout(
      navigationShell: navigationShell,
    ),
    branches: [
      StatefulShellBranch(
        navigatorKey: linksNavigatorKey,
        initialLocation: RoutesPaths.links,
        routes: [
          GoRoute(
            path: RoutesPaths.links,
            builder: (context, state) => const Links(),
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: searchNavigatorKey,
        initialLocation: RoutesPaths.search,
        routes: [
          GoRoute(
            path: RoutesPaths.search,
            builder: (context, state) => const Search(),
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: settingsNavigatorKey,
        initialLocation: RoutesPaths.settings,
        routes: [
          GoRoute(
            path: RoutesPaths.settings,
            builder: (context, state) => const Settings(),
          ),
          GoRoute(
            path: RoutesPaths.customization,
            builder: (context, state) => const Customization(),
          ),
        ],
      ),
    ],
  ),
];
