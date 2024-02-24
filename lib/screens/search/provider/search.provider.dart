import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/search/model/search.model.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'search.provider.g.dart';

@riverpod
FutureOr<ApiResponse<Bookmarks>?> searchBookmarks(SearchBookmarksRef ref) async {
  if (ref.watch(searchProvider).searchTerm == "") return null;
  final result = await ref.read(apiClientProviderProvider)!.fetchBookmarks(q: ref.watch(searchProvider).searchTerm);
  return result;
}

@riverpod
FutureOr<ApiResponse<Tags>?> searchTags(SearchTagsRef ref) async {
  if (ref.watch(searchProvider).searchTerm == "") return null;
  final result = await ref.read(apiClientProviderProvider)!.fetchTags(q: ref.watch(searchProvider).searchTerm);
  return result;
}

@riverpod
class Search extends _$Search {
  @override
  SearchModel build() {
    return SearchModel(
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
