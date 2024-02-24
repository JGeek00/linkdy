import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/links/model/links.model.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'links.provider.g.dart';

@riverpod
FutureOr<ApiResponse<Bookmarks>> linksRequest(LinksRequestRef ref) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks();
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
