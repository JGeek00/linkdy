import 'package:flutter/material.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/app_route.dart';
import 'package:linkdy/router/paths.dart';

final appScreens = [
  AppRoute(
    icon: Icons.link_rounded,
    route: RoutesPaths.links,
    name: t.links.links,
  ),
  AppRoute(
    icon: Icons.search_rounded,
    route: RoutesPaths.search,
    name: t.search.search,
  ),
  AppRoute(
    icon: Icons.settings_rounded,
    route: RoutesPaths.settings,
    name: t.settings.settings,
  ),
];
