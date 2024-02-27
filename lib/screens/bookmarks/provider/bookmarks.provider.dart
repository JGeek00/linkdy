import 'package:linkdy/constants/global_keys.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/provider/common_functions.dart';
import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';
import 'package:linkdy/screens/bookmarks/model/bookmarks.model.dart';

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

  void setBookmarks(List<Bookmark> bookmarks) {
    state.bookmarks = bookmarks;
    ref.notifyListeners();
  }

  Future<void> refresh() async {
    await ref.read(bookmarksRequestProvider(state.limit).future);
  }

  void deleteBookmark(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.deleteBookmark<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result == true) {
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
    }
  }

  void markAsReadUnread(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.markAsReadUnread<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result != null) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
      ref.notifyListeners();
    }
  }

  void archiveUnarchive(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.archiveUnarchive<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result == true) {
      // On this case the bookmark always will pass from unarchived to archived
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
    }
  }
}
