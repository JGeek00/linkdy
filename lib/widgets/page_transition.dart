import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class PageTransition extends StatelessWidget {
  final Widget child;

  const PageTransition({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, primaryAnimation, secondaryAnimation) => FadeThroughTransition(
        animation: primaryAnimation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      ),
      child: child,
    );
  }
}
