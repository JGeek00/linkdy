import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:linkdy/widgets/system_overlay_style.dart';

import 'package:linkdy/config/app_screens.dart';
import 'package:linkdy/providers/router.provider.dart';

class Layout extends ConsumerWidget {
  final GoRouterState state;
  final Widget child;

  const Layout({
    super.key,
    required this.state,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenIndex = appScreens.map((s) => s.route).toList().indexOf("/${state.matchedLocation.split("/")[1]}");

    return OverlayStyle(
      child: Scaffold(
        body: child,
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (s) => ref.watch(routerProvider).replace(appScreens[s].route),
          selectedIndex: screenIndex,
          destinations: appScreens
              .map(
                (screen) => NavigationDestination(
                  icon: Icon(screen.icon),
                  label: screen.name,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
