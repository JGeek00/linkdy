import 'package:flutter/material.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/app_route.dart';
import 'package:linkdy/router/paths.dart';

final appScreens = [
  AppRoute(
    icon: Icons.bookmarks_rounded,
    route: RoutesPaths.bookmarks,
    name: t.bookmarks.bookmarks,
  ),
  AppRoute(
    icon: Icons.label_rounded,
    route: RoutesPaths.tags,
    name: t.tags.tags,
  ),
  AppRoute(
    icon: Icons.settings_rounded,
    route: RoutesPaths.settings,
    name: t.settings.settings,
  ),
];
