import 'package:flutter/material.dart';

import 'package:linkdy/screens/bookmarks/model/search_bookmarks.model.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_bookmarks.provider.g.dart';

@riverpod
FutureOr<ApiResponse<BookmarksResponse>?> fetchSearchBookmarks(FetchSearchBookmarksRef ref) async {
  if (ref.watch(searchBookmarksProvider).searchTerm == "") return null;
  final result = await ref.read(apiClientProvider)!.fetchBookmarks(q: ref.watch(searchBookmarksProvider).searchTerm);
  return result;
}

@riverpod
class SearchBookmarks extends _$SearchBookmarks {
  @override
  SearchBookmarksModel build() {
    return SearchBookmarksModel(
      searchController: TextEditingController(),
    );
  }

  void clearSearch() {
    state.searchController.clear();
    state.searchTerm = "";
    ref.notifyListeners();
  }

  void notifyOnChange() {
    ref.notifyListeners();
  }

  void setSearchTerm(String value) {
    state.searchTerm = value;
    ref.notifyListeners();
  }
}
