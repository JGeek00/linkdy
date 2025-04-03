import 'package:flutter/material.dart';
import 'package:linkdy/constants/enums.dart';

class CustomTabContentList extends StatelessWidget {
  final Widget Function() loadingGenerator;
  final int itemsCount;
  final Widget Function(int index) contentWidget;
  final Widget noData;
  final Widget Function() errorGenerator;
  final LoadStatus loadStatus;
  final Future<void> Function() onRefresh;
  final double? refreshIndicatorOffset;
  final bool? fabVisible;
  final bool? noSliver;
  final EdgeInsets? listPadding;
  final double? heightFabHidden;

  const CustomTabContentList({
    super.key,
    required this.loadingGenerator,
    required this.itemsCount,
    required this.contentWidget,
    required this.noData,
    required this.errorGenerator,
    required this.loadStatus,
    required this.onRefresh,
    this.refreshIndicatorOffset,
    this.fabVisible,
    this.noSliver,
    this.listPadding,
    this.heightFabHidden,
  });

  @override
  Widget build(BuildContext context) {
    switch (loadStatus) {
      case LoadStatus.loading:
        if (noSliver == true) {
          return Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: loadingGenerator());
        } else {
          return SafeArea(
            top: false,
            child: Builder(
              builder: (BuildContext context) => CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  SliverFillRemaining(
                    child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: loadingGenerator()),
                  ),
                ],
              ),
            ),
          );
        }

      case LoadStatus.loaded:
        if (noSliver == true) {
          if (itemsCount > 0) {
            return SafeArea(
              child: ListView.builder(
                padding: listPadding,
                itemCount: itemsCount,
                itemBuilder: (context, index) => contentWidget(index),
              ),
            );
          } else {
            return SafeArea(
              child: noData,
            );
          }
        } else {
          return SafeArea(
            top: false,
            bottom: false,
            child: Builder(
              builder: (BuildContext context) {
                return RefreshIndicator(
                  onRefresh: onRefresh,
                  edgeOffset: refreshIndicatorOffset ?? 70,
                  child: CustomScrollView(
                    slivers: <Widget>[
                      SliverOverlapInjector(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                      ),
                      if (itemsCount > 0)
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => contentWidget(index),
                            childCount: itemsCount,
                          ),
                        ),
                      if (itemsCount == 0)
                        SliverFillRemaining(
                          child: noData,
                        ),
                    ],
                  ),
                );
              },
            ),
          );
        }

      case LoadStatus.error:
        if (noSliver == true) {
          return Padding(padding: const EdgeInsets.only(top: 95, left: 16, right: 16), child: errorGenerator());
        } else {
          return SafeArea(
            top: false,
            child: Builder(
              builder: (BuildContext context) => CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  SliverFillRemaining(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 95, left: 16, right: 16),
                      child: errorGenerator(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    }
  }
}
