import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:linkdy/i18n/strings.g.dart';

import 'package:linkdy/widgets/system_overlay_style.dart';

class Layout extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const Layout({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goBranch(int index) {
      navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      );
    }

    return OverlayStyle(
      child: Scaffold(
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) => FadeThroughTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: navigationShell,
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (s) => goBranch(s),
          selectedIndex: navigationShell.currentIndex,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.link_rounded),
              label: t.links.links,
            ),
            NavigationDestination(
              icon: const Icon(Icons.search_rounded),
              label: t.search.search,
            ),
            NavigationDestination(
              icon: const Icon(Icons.settings_rounded),
              label: t.settings.settings,
            ),
          ],
        ),
      ),
    );
  }
}
