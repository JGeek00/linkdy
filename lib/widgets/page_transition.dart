import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class PageTransition extends StatelessWidget {
  final Widget child;

  const PageTransition({
    Key? key,
    required this.child,
  }) : super(key: key);

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
