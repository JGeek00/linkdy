import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/tag_bookmarks/model/tag_bookmarks.model.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'tag_bookmarks.provider.g.dart';

@riverpod
FutureOr<void> tagBookmarksRequest(TagBookmarksRequestRef ref, Tag? tag, String? tagId, int limit) async {
  final tagResult = tag == null ? await ref.watch(apiClientProvider)!.fetchTagById(tagId!) : null;
  if (tagResult != null && tagResult.successful == false) {
    ref.read(tagBookmarksProvider.notifier).setInitialLoadStatus(LoadStatus.error);
    return;
  }

  final bookmarksResult = await ref.watch(apiClientProvider)!.fetchBookmarks(
        q: tag != null ? tag.name : tagResult!.content!.name,
        limit: limit,
        offset: 0,
      );

  if (bookmarksResult.successful == true) {
    ref.read(tagBookmarksProvider).bookmarks = bookmarksResult.content!.results!;
    ref.read(tagBookmarksProvider).maxNumber = bookmarksResult.content!.count!;
    if (tag == null) ref.read(tagBookmarksProvider).tag = tagResult!.content!;
    ref.read(tagBookmarksProvider).currentPage = 0;
    ref.read(tagBookmarksProvider).loadingMore = false;
    ref.read(tagBookmarksProvider).initialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(tagBookmarksProvider).initialLoadStatus = LoadStatus.error;
  }

  ref.read(tagBookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> tagBookmarksRequestLoadMore(TagBookmarksRequestLoadMoreRef ref) async {
  final provider = ref.watch(tagBookmarksProvider);

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        q: provider.tag!.name,
        limit: provider.limit,
        offset: newOffset,
      );
  await Future.delayed(Duration(seconds: 4));
  if (result.successful == true) {
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(tagBookmarksProvider.notifier).setLoadingMore(false);
}

@riverpod
class TagBookmarks extends _$TagBookmarks {
  @override
  TagBookmarksModel build() {
    return TagBookmarksModel(
      bookmarks: [],
    );
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }

  void setInitialLoadStatus(LoadStatus status) {
    state.initialLoadStatus = status;
    ref.notifyListeners();
  }

  void setLoadingMore(bool status) {
    state.loadingMore = status;
    ref.notifyListeners();
  }

  Future<void> refresh() async {
    await ref.read(tagBookmarksRequestProvider(state.tag, state.tagId, state.limit).future);
  }

  void notifyListeners() {
    ref.notifyListeners();
  }
}
