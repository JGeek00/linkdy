import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/tag_bookmarks/provider/tag_bookmarks.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class TagBookmarksScreen extends ConsumerStatefulWidget {
  final String? tagId;
  final Tag? tag;

  const TagBookmarksScreen({
    Key? key,
    required this.tagId,
    this.tag,
  }) : super(key: key);

  @override
  TagBookmarksScreenState createState() => TagBookmarksScreenState();
}

class TagBookmarksScreenState extends ConsumerState<TagBookmarksScreen> {
  @override
  void initState() {
    if (widget.tag == null && widget.tagId == null) {
      final router = ref.watch(routerProvider);
      while (router.canPop() == true) {
        router.pop();
      }
      router.pushReplacement(RoutesPaths.bookmarks);
      return;
    }
    if (widget.tag != null) {
      ref.read(tagBookmarksProvider).tag = widget.tag;
    }
    if (widget.tagId != null) {
      ref.read(tagBookmarksProvider).tagId = widget.tagId;
    }
    ref.read(tagBookmarksRequestProvider(widget.tag, widget.tagId, ref.read(tagBookmarksProvider).limit));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tag == null && widget.tagId == null) return const Material();

    final provider = ref.watch(tagBookmarksProvider);

    bool scrollListener(ScrollUpdateNotification scrollNotification) {
      if (scrollNotification.metrics.extentAfter < 100 &&
          provider.loadingMore == false &&
          provider.bookmarks.length < provider.maxNumber) {
        ref.read(tagBookmarksProvider.notifier).setLoadingMore(true);
        ref.watch(tagBookmarksRequestLoadMoreProvider);
      }
      return false;
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar.large(
              pinned: true,
              floating: true,
              centerTitle: false,
              forceElevated: innerBoxIsScrolled,
              title: Text(
                widget.tag != null
                    ? "#${widget.tag!.name}"
                    : provider.tag != null
                        ? "#${provider.tag!.name}"
                        : '',
              ),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.read(tagBookmarksProvider.notifier).refresh(),
              child: NotificationListener(
                onNotification: scrollListener,
                child: CustomScrollView(
                  slivers: [
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                    ),
                    if (provider.initialLoadStatus == LoadStatus.loading)
                      const SliverFillRemaining(
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    if (provider.initialLoadStatus == LoadStatus.error)
                      SliverFillRemaining(
                        child: ErrorScreen(
                          error: t.bookmarks.cannotLoadBookmarks,
                        ),
                      ),
                    if (provider.bookmarks.isEmpty)
                      SliverFillRemaining(
                        child: NoDataScreen(
                          message: t.tags.tagBookmarks.noBookmarksWithThisTag,
                        ),
                      ),
                    if (provider.bookmarks.isNotEmpty)
                      SliverList.builder(
                        itemCount:
                            provider.loadingMore == true ? provider.bookmarks.length + 1 : provider.bookmarks.length,
                        itemBuilder: (context, index) {
                          if (provider.loadingMore == true && index == provider.bookmarks.length) {
                            return const Padding(
                              padding: EdgeInsets.all(16),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                          return BookmarkItem(
                            bookmark: provider.bookmarks[index],
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
