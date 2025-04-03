import 'package:flutter/material.dart';

class SliverTabBody extends StatelessWidget {
  final Widget child;

  const SliverTabBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Builder(
        builder: (BuildContext context) => CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class SliverTabBodyRefresh extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;

  const SliverTabBodyRefresh({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Builder(
        builder: (BuildContext context) => RefreshIndicator(
          displacement: 120,
          onRefresh: onRefresh,
          child: CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
