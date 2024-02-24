import 'package:flutter/material.dart';

class SliverTabBody extends StatelessWidget {
  final Widget child;

  const SliverTabBody({Key? key, required this.child}) : super(key: key);

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
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

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
