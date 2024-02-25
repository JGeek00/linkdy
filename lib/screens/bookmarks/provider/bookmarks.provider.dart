import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/model/bookmarks.model.dart';

import 'package:linkdy/providers/api_client_provider.dart';
import 'package:linkdy/constants/enums.dart';

part 'bookmarks.provider.g.dart';

@riverpod
FutureOr<void> bookmarksRequest(BookmarksRequestRef ref, int limit) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        limit: limit,
        offset: 0,
      );

  if (result.successful == true) {
    ref.read(bookmarksProvider).bookmarks = result.content!.results!;
    ref.read(bookmarksProvider).maxNumber = result.content!.count!;
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
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(bookmarksProvider.notifier).setLoadingMore(false);
}

@Riverpod(keepAlive: true)
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
    state.currentPage = 0;
    state.loadingMore = false;
    ref.notifyListeners();
  }
}
