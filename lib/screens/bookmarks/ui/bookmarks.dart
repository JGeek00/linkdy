import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:linkdy/constants/enums.dart';

import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/add_bookmark_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/search_bookmarks.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';
import 'package:linkdy/widgets/snackbar_fab.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';

class BookmarksScreen extends ConsumerWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(bookmarksProvider);

    final width = MediaQuery.of(context).size.width;

    void openAddModal() {
      showGeneralDialog(
        context: context,
        barrierColor: !(width > 700 || !(Platform.isAndroid || Platform.isIOS)) ? Colors.transparent : Colors.black54,
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(
              CurvedAnimation(parent: anim1, curve: Curves.easeInOutCubicEmphasized),
            ),
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => AddBookmarkModal(fullscreen: width <= 700),
      );
    }

    void openSearchModal() {
      showGeneralDialog(
        context: context,
        barrierColor: !(width > 700 || !(Platform.isAndroid || Platform.isIOS)) ? Colors.transparent : Colors.black54,
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0)).animate(
              CurvedAnimation(parent: anim1, curve: Curves.easeInOutCubicEmphasized),
            ),
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) => SearchBookmarksModal(fullscreen: width <= 700),
      );
    }

    bool scrollListener(ScrollUpdateNotification scrollNotification) {
      if (scrollNotification.metrics.extentAfter < 100 &&
          bookmarks.loadingMore == false &&
          bookmarks.bookmarks.length < bookmarks.maxNumber) {
        ref.read(bookmarksProvider.notifier).setLoadingMore(true);
        ref.watch(bookmarksRequestLoadMoreProvider);
      }
      return false;
    }

    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar.large(
                  pinned: true,
                  floating: true,
                  centerTitle: false,
                  forceElevated: innerBoxIsScrolled,
                  title: Text(t.bookmarks.bookmarks),
                  actions: [
                    IconButton(
                      onPressed: openSearchModal,
                      icon: const Icon(Icons.search_rounded),
                      tooltip: t.bookmarks.search.searchBookmarks,
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            ],
            body: SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                builder: (context) => RefreshIndicator(
                  displacement: 120,
                  onRefresh: () => ref.read(bookmarksProvider.notifier).refresh(),
                  child: NotificationListener(
                    onNotification: scrollListener,
                    child: CustomScrollView(
                      slivers: [
                        SliverOverlapInjector(
                          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        ),
                        if (bookmarks.inialLoadStatus == LoadStatus.loading)
                          const SliverFillRemaining(
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        if (bookmarks.inialLoadStatus == LoadStatus.error)
                          SliverFillRemaining(
                            child: ErrorScreen(
                              error: t.bookmarks.cannotLoadBookmarks,
                            ),
                          ),
                        if (bookmarks.bookmarks.isEmpty)
                          SliverFillRemaining(
                            child: NoDataScreen(
                              message: t.bookmarks.noBookmarksAdded,
                            ),
                          ),
                        if (bookmarks.bookmarks.isNotEmpty)
                          SlidableAutoCloseBehavior(
                            child: SliverList.builder(
                              itemCount: bookmarks.bookmarks.length + 1,
                              itemBuilder: (context, index) {
                                // index == bookmarks.value!.content!.results!.length -> itemCount + 1
                                if (index == bookmarks.bookmarks.length) {
                                  if (bookmarks.loadingMore) {
                                    return const SizedBox(
                                      height: 80,
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  }
                                  // Bottom gap for FAB
                                  return const SizedBox(height: 80);
                                }
                                return BookmarkItem(
                                  bookmark: bookmarks.bookmarks[index],
                                  onReadUnread: ref.read(bookmarksProvider.notifier).markAsReadUnread,
                                  onDelete: (bookmark) => showDialog(
                                    context: context,
                                    builder: (context) => DeleteBookmarkModal(
                                      bookmark: bookmark,
                                      onDelete: ref.read(bookmarksProvider.notifier).deleteBookmark,
                                    ),
                                  ),
                                  onArchiveUnarchive: ref.read(bookmarksProvider.notifier).archiveUnarchive,
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
          SnackbarFloatingActionButton(
            onPressed: openAddModal,
            child: const Icon(Icons.add_rounded),
          ),
        ],
      ),
    );
  }
}
