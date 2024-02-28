import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/screens/filtered_bookmarks/provider/filtered_bookmarks.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class FilteredBookmarksScreen extends ConsumerStatefulWidget {
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
  FilteredBookmarksScreenState createState() => FilteredBookmarksScreenState();
}

class FilteredBookmarksScreenState extends ConsumerState<FilteredBookmarksScreen> {
  @override
  void initState() {
    ref.read(filteredBookmarksProvider.notifier).setMode(widget.filteredBookmarksMode);
    if (widget.filteredBookmarksMode == FilteredBookmarksMode.tag) {
      if (widget.tag == null && widget.tagId == null) {
        final router = ref.read(routerProvider);
        while (router.canPop() == true) {
          router.pop();
        }
        router.pushReplacement(RoutesPaths.bookmarks);
        return;
      }
      if (widget.tag != null) {
        ref.read(filteredBookmarksProvider).tag = widget.tag;
      }
      if (widget.tagId != null) {
        ref.read(filteredBookmarksProvider).tagId = widget.tagId;
      }
      ref.read(tagBookmarksRequestProvider(widget.tag, widget.tagId, ref.read(filteredBookmarksProvider).limit));
    } else {
      ref.read(
        filteredBookmarksRequestProvider(widget.filteredBookmarksMode, ref.read(filteredBookmarksProvider).limit),
      );
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.filteredBookmarksMode == FilteredBookmarksMode.tag && widget.tag == null && widget.tagId == null) {
      return const Material();
    }

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
      switch (widget.filteredBookmarksMode) {
        case FilteredBookmarksMode.tag:
          return widget.tag != null
              ? "#${widget.tag!.name}"
              : provider.tag != null
                  ? "#${provider.tag!.name}"
                  : '';

        case FilteredBookmarksMode.archived:
          return t.bookmarks.archived;

        case FilteredBookmarksMode.shared:
          return t.bookmarks.shared;

        default:
          return "";
      }
    }

    String noContent() {
      switch (widget.filteredBookmarksMode) {
        case FilteredBookmarksMode.tag:
          return t.tags.filteredBookmarks.noBookmarksWithThisTag;

        case FilteredBookmarksMode.archived:
          return t.tags.filteredBookmarks.noArchivedBookmarks;

        case FilteredBookmarksMode.shared:
          return t.tags.filteredBookmarks.noSharedBookmarks;

        default:
          return "";
      }
    }

    return ScaffoldMessenger(
      key: ScaffoldMessengerKeys.filteredBookmarks,
      child: Scaffold(
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
                        SlidableAutoCloseBehavior(
                          child: SliverList.builder(
                            itemCount: provider.loadingMore == true
                                ? provider.bookmarks.length + 1
                                : provider.bookmarks.length,
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
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
