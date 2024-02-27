import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route circlePageBuilder({
  required Widget page,
  required Offset beginPosition,
  bool? fullScreenDialog,
  Duration? transitionDuration,
}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: transitionDuration ?? const Duration(milliseconds: 250),
    reverseTransitionDuration: transitionDuration ?? const Duration(milliseconds: 250),
    fullscreenDialog: fullScreenDialog ?? false,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const double beganRadius = 0.0;
      final double endRadius = MediaQuery.of(context).size.height * 1.2;

      final radiusTweenAnimation = animation.drive(
        Tween(begin: beganRadius, end: endRadius),
      );

      return ClipPath(
        clipper: _CircleTransitionClipper(
          center: beginPosition,
          radius: radiusTweenAnimation.value,
        ),
        child: child,
      );
    },
  );
}

class _CircleTransitionClipper extends CustomClipper<Path> {
  final Offset center;
  final double radius;

  const _CircleTransitionClipper({
    required this.center,
    required this.radius,
  });

  @override
  Path getClip(Size size) {
    return Path()
      ..addOval(
        Rect.fromCircle(
          center: center,
          radius: radius,
        ),
      );
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
