import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/widgets/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/screens/filtered_bookmarks/provider/filtered_bookmarks.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class FilteredBookmarksScreen extends HookConsumerWidget {
  final FilteredBookmarksMode filteredBookmarksMode;
  final String? tagId;
  final Tag? tag;

  const FilteredBookmarksScreen({
    super.key,
    required this.filteredBookmarksMode,
    this.tagId,
    this.tag,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        ref.read(filteredBookmarksProvider.notifier).setMode(filteredBookmarksMode);
        if (filteredBookmarksMode == FilteredBookmarksMode.tag) {
          if (tag == null && tagId == null) {
            final router = ref.read(routerProvider);
            while (router.canPop() == true) {
              router.pop();
            }
            router.pushReplacement(RoutesPaths.bookmarks);
            return;
          }
          if (tag != null) {
            ref.read(filteredBookmarksProvider).tag = tag;
          }
          if (tagId != null) {
            ref.read(filteredBookmarksProvider).tagId = tagId;
          }
          ref.read(tagBookmarksRequestProvider(tag, tagId, ref.read(filteredBookmarksProvider).limit));
        } else {
          ref.read(
            filteredBookmarksRequestProvider(filteredBookmarksMode, ref.read(filteredBookmarksProvider).limit),
          );
        }
        return null;
      },
      [filteredBookmarksMode, tagId, tag],
    );

    if (filteredBookmarksMode == FilteredBookmarksMode.tag && tag == null && tagId == null) {
      return const Material();
    }

    return ScaffoldMessenger(
      key: ScaffoldMessengerKeys.filteredBookmarks,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > Sizes.tabletBreakpoint) {
            return Material(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: _List(
                      filteredBookmarksMode: filteredBookmarksMode,
                      tag: tag,
                      tabletMode: true,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Material(
                      child: Router.withConfig(config: ref.watch(filteredBookmarksProvider).webViewRouter),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return _List(
              filteredBookmarksMode: filteredBookmarksMode,
              tag: tag,
              tabletMode: false,
            );
          }
        },
      ),
    );
  }
}

class _List extends ConsumerWidget {
  final bool tabletMode;
  final FilteredBookmarksMode filteredBookmarksMode;
  final Tag? tag;

  const _List({
    required this.filteredBookmarksMode,
    this.tag,
    required this.tabletMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(filteredBookmarksProvider);

    final width = MediaQuery.of(context).size.width;

    bool scrollListener(ScrollUpdateNotification scrollNotification) {
      if (scrollNotification.metrics.extentAfter < 100 &&
          provider.loadingMore == false &&
          provider.bookmarks.length < provider.maxNumber) {
        ref.read(filteredBookmarksProvider.notifier).setLoadingMore(true);
        ref.read(tagBookmarksRequestLoadMoreProvider);
      }
      return false;
    }

    String title() {
      switch (filteredBookmarksMode) {
        case FilteredBookmarksMode.tag:
          return tag != null
              ? "#${tag!.name}"
              : provider.tag != null
                  ? "#${provider.tag!.name}"
                  : '';

        case FilteredBookmarksMode.archived:
          return t.bookmarks.archived;

        case FilteredBookmarksMode.shared:
          return t.bookmarks.shared;
      }
    }

    String noContent() {
      switch (filteredBookmarksMode) {
        case FilteredBookmarksMode.tag:
          return t.tags.filteredBookmarks.noBookmarksWithThisTag;

        case FilteredBookmarksMode.archived:
          return t.tags.filteredBookmarks.noArchivedBookmarks;

        case FilteredBookmarksMode.shared:
          return t.tags.filteredBookmarks.noSharedBookmarks;
      }
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
              title: Text(title()),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.read(filteredBookmarksProvider.notifier).refresh(),
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
                          message: noContent(),
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
                            onSelect: (b) => ref.read(filteredBookmarksProvider.notifier).selectBookmark(b, width),
                            onReadUnread: ref.read(filteredBookmarksProvider.notifier).markAsReadUnread,
                            onDelete: (bookmark) => showDialog(
                              context: context,
                              builder: (context) => DeleteBookmarkModal(
                                bookmark: bookmark,
                                onDelete: ref.read(filteredBookmarksProvider.notifier).deleteBookmark,
                              ),
                            ),
                            onArchiveUnarchive: ref.read(filteredBookmarksProvider.notifier).archiveUnarchive,
                            onShareInternally: ref.read(filteredBookmarksProvider.notifier).shareUnshare,
                            onEdit: (b) => openBookmarkFormModal(context: context, width: width, bookmark: b),
                            selected: provider.bookmarks[index] == provider.selectedBookmark,
                            tabletMode: tabletMode,
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
