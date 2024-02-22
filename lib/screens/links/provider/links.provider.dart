import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:my_linkding/screens/links/model/links.model.dart';

import 'package:my_linkding/models/api_response.dart';
import 'package:my_linkding/models/data/bookmarks.dart';
import 'package:my_linkding/providers/api_client_provider.dart';

part 'links.provider.g.dart';

@riverpod
FutureOr<ApiResponse<Bookmarks>> linksRequest(LinksRequestRef ref) async {
  final result = await ref.watch(apiClientProviderProvider)!.fetchBookmarks();
  return result;
}

@riverpod
class Links extends _$Links {
  @override
  LinksModel build() {
    return LinksModel();
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }
}
