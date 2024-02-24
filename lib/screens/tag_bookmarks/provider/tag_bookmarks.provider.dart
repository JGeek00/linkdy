import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/tag_bookmarks/model/tag_bookmarks.model.dart';

import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/tag_bookmarks.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'tag_bookmarks.provider.g.dart';

@riverpod
FutureOr<ApiResponse<TagBookmarksResponse?>> tagIdBookmarksRequest(TagIdBookmarksRequestRef ref, String tagId) async {
  final tagResult = await ref.watch(apiClientProvider)!.fetchTagById(tagId);
  if (tagResult.content == null) return const ApiResponse(successful: false);
  final bookmarksResult = await ref.watch(apiClientProvider)!.fetchBookmarks(q: tagResult.content!.name);
  return ApiResponse(
    successful: bookmarksResult.successful,
    content: TagBookmarksResponse(
      bookmarksResponse: bookmarksResult.content,
      tag: tagResult.content,
    ),
  );
}

@riverpod
FutureOr<ApiResponse<BookmarksResponse>> tagBookmarksRequest(TagBookmarksRequestRef ref, Tag tag) async {
  final bookmarksResult = await ref.watch(apiClientProvider)!.fetchBookmarks(q: tag.name);
  return bookmarksResult;
}

@riverpod
class TagBookmarks extends _$TagBookmarks {
  @override
  TagBookmarksModel build() {
    return TagBookmarksModel();
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }
}
