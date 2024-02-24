import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmarks.dart';
import 'package:linkdy/screens/bookmarks/ui/search_bookmarks.dart';
import 'package:linkdy/screens/onboarding/ui/onboarding.dart';
import 'package:linkdy/screens/settings/ui/customization/customization.dart';
import 'package:linkdy/screens/settings/ui/general_settings/general_settings.dart';
import 'package:linkdy/screens/settings/ui/settings.dart';
import 'package:linkdy/screens/tags/ui/tags.dart';
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
  ShellRoute(
    builder: (context, state, child) => Layout(
      state: state,
      child: child,
    ),
    routes: [
      GoRoute(
        path: RoutesPaths.bookmarks,
        builder: (context, state) => const BookmarksScreen(),
      ),
      GoRoute(
        path: RoutesPaths.tags,
        builder: (context, state) => const TagsScreen(),
      ),
      GoRoute(
        path: RoutesPaths.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  ),
  GoRoute(
    path: RoutesPaths.bookmarksSearch,
    builder: (context, state) => const SearchBookmarksScreen(),
  ),
  GoRoute(
    path: RoutesPaths.customization,
    builder: (context, state) => const Customization(),
  ),
  GoRoute(
    path: RoutesPaths.generalSettings,
    builder: (context, state) => const GeneralSettings(),
  ),
];
