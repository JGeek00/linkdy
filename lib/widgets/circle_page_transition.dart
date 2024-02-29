import 'package:flutter/cupertino.dart';

class CirclePageRoute extends PageRouteBuilder {
  final Widget page;
  final Offset beginPosition;

  CirclePageRoute({
    required this.page,
    required this.beginPosition,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
        );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const double beganRadius = 0.0;
    final size = MediaQuery.of(context).size;
    final double endRadius = size.height > size.width ? size.height * 1.2 : size.width * 1.2;

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
  }
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
