import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/tag_bookmarks/model/tag_bookmarks.model.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'tag_bookmarks.provider.g.dart';

@riverpod
FutureOr<ApiResponse<BookmarksResponse>> tagBookmarksRequest(TagBookmarksRequestRef ref, String tagName) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(q: tagName);
  return result;
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
