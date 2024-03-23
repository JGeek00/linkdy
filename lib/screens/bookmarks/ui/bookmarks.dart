import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:linkdy/screens/bookmarks/ui/visualization_modal.dart';
import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/search_bookmarks.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/providers/receive_sharing_intent_url.provider.dart';
import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/widgets/system_overlay_style.dart';

final GlobalKey _searchButtonKey = GlobalKey();
final webviewBookmarksKey = GlobalKey<NavigatorState>();

class BookmarksScreen extends HookConsumerWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final sharedUrl = ref.watch(receiveSharingIntentUrlProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (sharedUrl == null) return;
      openBookmarkFormModal(context: context, width: width, url: sharedUrl);
      ref.read(receiveSharingIntentUrlProvider.notifier).setValue(null);
    });

    return ScaffoldMessenger(
      key: ScaffoldMessengerKeys.bookmarks,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > Sizes.tabletBreakpoint) {
            return Row(
              children: [
                const Expanded(flex: 2, child: _List(tabletMode: true)),
                Expanded(
                  flex: 3,
                  child: Material(
                    child: Router.withConfig(config: ref.watch(bookmarksProvider).webViewRouter),
                  ),
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
      if (tabletMode == true && ref.read(bookmarksProvider).webViewRouter.canPop()) {
        ref.read(bookmarksProvider.notifier).clearSelectedBookmark();
        ref.read(bookmarksProvider).webViewRouter.pop();
      }
      // RenderBox box = _searchButtonKey.currentContext!.findRenderObject() as RenderBox;
      // Offset position = box.localToGlobal(Offset.zero);
      Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(
          builder: (ctx) => const SearchBookmarksModal(fullscreen: true),
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

    return OverlayStyle(
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
                  IconButton(
                    onPressed: () => showModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      builder: (context) => const VisualizationModal(),
                      isScrollControlled: true,
                    ),
                    icon: const Icon(Icons.sort_rounded),
                    tooltip: t.bookmarks.filterSort,
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) => <PopupMenuEntry>[
                      PopupMenuItem(
                        onTap: () =>
                            ref.read(bookmarksProvider.notifier).pushRoute(RoutesPaths.archivedBookmarks, tabletMode),
                        child: Row(
                          children: [
                            const Icon(Icons.archive_rounded),
                            const SizedBox(width: 16),
                            Text(t.bookmarks.archived),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () =>
                            ref.read(bookmarksProvider.notifier).pushRoute(RoutesPaths.sharedBookmarks, tabletMode),
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
                        onTap: () => ref.read(bookmarksProvider.notifier).pushRoute(RoutesPaths.tags, tabletMode),
                        child: Row(
                          children: [
                            const Icon(Icons.label_rounded),
                            const SizedBox(width: 16),
                            Text(t.tags.tags),
                          ],
                        ),
                      ),
                      const PopupMenuDivider(height: 1),
                      PopupMenuItem(
                        onTap: () => ref.read(bookmarksProvider.notifier).pushRoute(RoutesPaths.settings, tabletMode),
                        child: Row(
                          children: [
                            const Icon(Icons.settings_rounded),
                            const SizedBox(width: 16),
                            Text(t.settings.settings),
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
            bottom: true,
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
                        SliverList.builder(
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
      ),
    );
  }
}
