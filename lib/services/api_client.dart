import 'package:dio/dio.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/server_instance.dart';

class ApiClient {
  final ServerInstance serverInstance;
  final Dio dioInstance;

  const ApiClient({
    required this.serverInstance,
    required this.dioInstance,
  });

  Future<bool> checkConnectionInstance() async {
    try {
      await dioInstance.get("/bookmarks/?limit=1");
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<ApiResponse<Bookmarks>> fetchBookmarks({String? q, int? limit, int? offset}) async {
    try {
      final response = await dioInstance.get(
        "/bookmarks",
        queryParameters: {
          "q": q,
          "limit": limit,
          "offset": offset,
        },
      );
      return ApiResponse(
        successful: true,
        content: Bookmarks.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      return const ApiResponse(successful: false);
    }
  }
}
