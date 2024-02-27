import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:linkdy/screens/bookmarks/provider/search_bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_form_modal.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/bookmarks/ui/delete_bookmark_modal.dart';
import 'package:linkdy/widgets/enter_search_term_screen.dart';
import 'package:linkdy/widgets/error_screen.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/providers/router.provider.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

class SearchBookmarksModal extends ConsumerWidget {
  final bool fullscreen;

  const SearchBookmarksModal({
    super.key,
    required this.fullscreen,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(searchBookmarksProvider);

    final width = MediaQuery.of(context).size.width;

    bool scrollListener(ScrollUpdateNotification scrollNotification) {
      if (scrollNotification.metrics.extentAfter < 100 &&
          provider.loadingMore == false &&
          provider.bookmarks.length < provider.maxNumber) {
        ref.read(searchBookmarksProvider.notifier).setLoadingMore(true);
        ref.watch(fetchSearchBookmarksLoadMoreProvider);
      }
      return false;
    }

    return ScaffoldMessenger(
      key: ScaffoldMessengerKeys.search,
      child: Dialog.fullscreen(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.2),
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(0),
            toolbarHeight: 68,
            leading: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: BackButton(
                onPressed: () => ref.watch(routerProvider).pop(),
              ),
            ),
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: TextFormField(
                  controller: ref.watch(searchBookmarksProvider).searchController,
                  onChanged: (_) => ref.read(searchBookmarksProvider.notifier).notifyListeners(),
                  onEditingComplete: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    ref.read(searchBookmarksProvider.notifier).setSearchTerm();
                    ref.read(searchBookmarksProvider.notifier).setInitialLoadStatus(LoadStatus.loading);
                    ref.read(fetchSearchBookmarksProvider(provider.limit));
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: t.bookmarks.search.searchBookmarks,
                    prefixIcon: const Icon(Icons.search_rounded),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    suffixIcon: ref.watch(searchBookmarksProvider).searchController.text != ""
                        ? IconButton(
                            onPressed: ref.read(searchBookmarksProvider.notifier).clearSearch,
                            icon: const Icon(
                              Icons.close_rounded,
                              size: 20,
                            ),
                            tooltip: t.bookmarks.search.clearSearch,
                          )
                        : null,
                  ),
                  textInputAction: TextInputAction.search,
                ),
              ),
            ),
          ),
          body: Builder(
            builder: (context) {
              if (provider.searchTerm == "") {
                return EnterSearchTermScreen(message: t.bookmarks.search.inputSearchTerm);
              }

              if (provider.inialLoadStatus == LoadStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (provider.inialLoadStatus == LoadStatus.error) {
                return ErrorScreen(
                  error: t.bookmarks.search.cannotSearchError,
                );
              }

              if (provider.bookmarks.isEmpty) {
                return NoDataScreen(
                  message: t.bookmarks.search.inputtedSearchTermNoResults,
                );
              }

              return NotificationListener(
                onNotification: scrollListener,
                child: SlidableAutoCloseBehavior(
                  child: ListView.builder(
                    itemCount: provider.loadingMore ? provider.bookmarks.length + 1 : provider.bookmarks.length,
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
                        onReadUnread: ref.read(searchBookmarksProvider.notifier).markAsReadUnread,
                        onDelete: (bookmark) => showDialog(
                          context: context,
                          builder: (context) => DeleteBookmarkModal(
                            bookmark: bookmark,
                            onDelete: ref.read(searchBookmarksProvider.notifier).deleteBookmark,
                          ),
                        ),
                        onArchiveUnarchive: ref.read(searchBookmarksProvider.notifier).archiveUnarchive,
                        onShareInternally: ref.read(searchBookmarksProvider.notifier).shareUnshare,
                        onEdit: (b) => openBookmarkFormModal(context: context, width: width, bookmark: b),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
