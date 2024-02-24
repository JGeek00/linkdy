import 'package:linkdy/screens/tags/models/tags.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'tags.provider.g.dart';

@riverpod
FutureOr<ApiResponse<TagsResponse>> tagsRequest(TagsRequestRef ref) async {
  final result = await ref.watch(apiClientProvider)!.fetchTags();
  return result;
}

@riverpod
class Tags extends _$Tags {
  @override
  TagsModel build() {
    return TagsModel();
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }
}
