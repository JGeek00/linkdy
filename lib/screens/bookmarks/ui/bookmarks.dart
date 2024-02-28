import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:linkdy/screens/bookmarks/ui/visualization_modal.dart';
import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/search_bookmarks.dart';
import 'package:linkdy/screens/webview/ui/webview.dart';
import 'package:linkdy/widgets/circle_page_transition.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/i18n/strings.g.dart';

final GlobalKey _searchButtonKey = GlobalKey();

class BookmarksScreen extends ConsumerWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldMessenger(
      key: ScaffoldMessengerKeys.bookmarks,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > Sizes.tabletBreakpoint) {
            return Row(
              children: [
                const Expanded(flex: 2, child: _List(tabletMode: true)),
                if (ref.watch(bookmarksProvider).selectedBookmark != null)
                  Expanded(
                    flex: 3,
                    child: WebViewScreen(
                      bookmark: ref.watch(bookmarksProvider).selectedBookmark!,
                    ),
                  ),
                if (ref.watch(bookmarksProvider).selectedBookmark == null)
                  const Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
              ],
            );
          } else {
            return const _List(tabletMode: false);
          }
        },
      ),
    );
  }
}

class _List extends ConsumerWidget {
  final bool tabletMode;

  const _List({
    required this.tabletMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(bookmarksProvider);

    final width = MediaQuery.of(context).size.width;

    void openSearchModal() {
      if (_searchButtonKey.currentContext == null) return;
      RenderBox box = _searchButtonKey.currentContext!.findRenderObject() as RenderBox;
      Offset position = box.localToGlobal(Offset.zero);
      Navigator.of(context, rootNavigator: true).push(
        circlePageBuilder(
          page: const SearchBookmarksModal(fullscreen: true),
          beginPosition: Offset(position.dx + 20, position.dy + 20),
        ),
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar.large(
              pinned: true,
              floating: true,
              centerTitle: false,
              forceElevated: innerBoxIsScrolled,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(t.bookmarks.bookmarks),
                  if (bookmarks.readStatus == ReadStatus.read || bookmarks.readStatus == ReadStatus.unread)
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            bookmarks.readStatus == ReadStatus.read
                                ? Icons.mark_email_read_rounded
                                : Icons.mark_as_unread_rounded,
                            size: 14,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            bookmarks.readStatus == ReadStatus.read ? t.bookmarks.read : t.bookmarks.unread,
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              actions: [
                IconButton(
                  key: _searchButtonKey,
                  onPressed: openSearchModal,
                  icon: const Icon(Icons.search_rounded),
                  tooltip: t.bookmarks.search.searchBookmarks,
                ),
                PopupMenuButton(
                  itemBuilder: (context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      onTap: () => ref.read(routerProvider).push(RoutesPaths.archivedBookmarks),
                      child: Row(
                        children: [
                          const Icon(Icons.archive_rounded),
                          const SizedBox(width: 16),
                          Text(t.bookmarks.archived),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () => ref.read(routerProvider).push(RoutesPaths.sharedBookmarks),
                      child: Row(
                        children: [
                          const Icon(Icons.share_rounded),
                          const SizedBox(width: 16),
                          Text(t.bookmarks.shared),
                        ],
                      ),
                    ),
                    const PopupMenuDivider(height: 1),
                    PopupMenuItem(
                      onTap: () => showModalBottomSheet(
                        context: context,
                        useRootNavigator: true,
                        builder: (context) => const VisualizationModal(),
                        isScrollControlled: true,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.sort_rounded),
                          const SizedBox(width: 16),
                          Text(t.bookmarks.filterSort),
                        ],
                      ),
                    ),
                  ],
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
                              onSelect: (b) => ref.read(bookmarksProvider.notifier).selectBookmark(b, width),
                              onReadUnread: ref.read(bookmarksProvider.notifier).markAsReadUnread,
                              onDelete: (bookmark) => showDialog(
                                context: context,
                                builder: (context) => DeleteBookmarkModal(
                                  bookmark: bookmark,
                                  onDelete: ref.read(bookmarksProvider.notifier).deleteBookmark,
                                ),
                              ),
                              onArchiveUnarchive: ref.read(bookmarksProvider.notifier).archiveUnarchive,
                              onShareInternally: ref.read(bookmarksProvider.notifier).shareUnshare,
                              onEdit: (b) => openBookmarkFormModal(context: context, width: width, bookmark: b),
                              selected: bookmarks.bookmarks[index] == bookmarks.selectedBookmark,
                              tabletMode: tabletMode,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => openBookmarkFormModal(context: context, width: width),
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
