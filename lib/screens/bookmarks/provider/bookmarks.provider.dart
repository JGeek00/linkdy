import 'package:linkdy/models/data/bookmarks.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/model/links.model.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'bookmarks.provider.g.dart';

@riverpod
FutureOr<ApiResponse<BookmarksResponse>> bookmarksRequest(BookmarksRequestRef ref) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks();
  return result;
}

@riverpod
class Bookmarks extends _$Bookmarks {
  @override
  BookmarksModel build() {
    return BookmarksModel();
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }
}
