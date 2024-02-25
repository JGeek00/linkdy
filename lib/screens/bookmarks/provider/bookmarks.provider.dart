import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';
import 'package:linkdy/screens/bookmarks/model/bookmarks.model.dart';

import 'package:linkdy/models/data/set_bookmark_data.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/utils/snackbar.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/constants/enums.dart';

part 'bookmarks.provider.g.dart';

@riverpod
FutureOr<void> bookmarksRequest(BookmarksRequestRef ref, int limit) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        limit: limit,
        offset: 0,
      );

  if (result.successful == true) {
    ref.read(faviconStoreProvider.notifier).loadFavicons(result.content!.results!);
    ref.read(bookmarksProvider).bookmarks = result.content!.results!;
    ref.read(bookmarksProvider).maxNumber = result.content!.count!;
    ref.read(bookmarksProvider).currentPage = 0;
    ref.read(bookmarksProvider).loadingMore = false;
    ref.read(bookmarksProvider).inialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(bookmarksProvider).inialLoadStatus = LoadStatus.error;
  }
  ref.read(bookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> bookmarksRequestLoadMore(BookmarksRequestLoadMoreRef ref) async {
  final provider = ref.watch(bookmarksProvider);

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        limit: provider.limit,
        offset: newOffset,
      );

  if (result.successful == true) {
    ref.read(faviconStoreProvider.notifier).loadFavicons(result.content!.results!);
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(bookmarksProvider.notifier).setLoadingMore(false);
}

@riverpod
class Bookmarks extends _$Bookmarks {
  @override
  BookmarksModel build() {
    final model = BookmarksModel(
      bookmarks: [],
    );
    ref.read(bookmarksRequestProvider(model.limit));
    return model;
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }

  void setLoadingMore(bool value) {
    state.loadingMore = value;
    ref.notifyListeners();
  }

  void notifyListeners() {
    ref.notifyListeners();
  }

  Future<void> refresh() async {
    await ref.read(bookmarksRequestProvider(state.limit).future);
  }

  void deleteBookmark(Bookmark bookmark) async {
    final processModal = ProcessModal();
    processModal.open(t.bookmarks.bookmarkOptions.deletingBookmark);

    final result = await ref.read(apiClientProvider)!.postDeleteBookmark(bookmark.id!);

    processModal.close();
    if (result.successful == true) {
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
      showSnacbkar(label: t.bookmarks.bookmarkOptions.bookmarkDeleted, color: Colors.green);
    } else {
      showSnacbkar(label: t.bookmarks.bookmarkOptions.bookmarkNotDeleted, color: Colors.red);
    }
  }

  void markAsReadUnread(Bookmark bookmark) async {
    final processModal = ProcessModal();
    processModal.open(
      bookmark.unread == true ? t.bookmarks.bookmarkOptions.markingAsRead : t.bookmarks.bookmarkOptions.markingAsUnead,
    );

    final result = await ref.read(apiClientProvider)!.putUpdateBookmark(
          bookmark.id!,
          SetBookmarkData(
            url: bookmark.url!,
            description: bookmark.description ?? '',
            isArchived: bookmark.isArchived ?? false,
            shared: bookmark.shared ?? false,
            unread: bookmark.unread == true ? false : true,
            tagNames: bookmark.tagNames?.join(",") ?? '',
            title: bookmark.title ?? '',
          ),
        );

    processModal.close();
    if (result.successful == true) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.content!.id ? result.content! : b).toList();
      ref.notifyListeners();
      showSnacbkar(
        label: bookmark.unread == true
            ? t.bookmarks.bookmarkOptions.markedAsReadSuccessfully
            : t.bookmarks.bookmarkOptions.markedAsUnreadSuccessfully,
        color: Colors.green,
      );
    } else {
      showSnacbkar(
        label: bookmark.unread == true
            ? t.bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead
            : t.bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread,
        color: Colors.red,
      );
    }
  }
}
