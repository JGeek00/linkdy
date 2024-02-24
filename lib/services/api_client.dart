import 'package:dio/dio.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/check_bookmark.dart';
import 'package:linkdy/models/data/post_bookmark.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/models/server_instance.dart';

class ApiClientService {
  final ServerInstance serverInstance;
  final Dio dioInstance;

  const ApiClientService({
    required this.serverInstance,
    required this.dioInstance,
  });

  Future<AuthResult> checkConnectionInstance() async {
    try {
      await dioInstance.get("/bookmarks/?limit=1");
      return AuthResult.success;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 401 || e.response!.statusCode == 403) {
        return AuthResult.invalidToken;
      }
      return AuthResult.other;
    } catch (e) {
      return AuthResult.other;
    }
  }

  Future<ApiResponse<BookmarksResponse>> fetchBookmarks({String? q, int? limit, int? offset}) async {
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
        content: BookmarksResponse.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      return const ApiResponse(successful: false);
    }
  }

  Future<ApiResponse<CheckBookmark>> fetchCheckAddBookmark({required String url}) async {
    try {
      final response = await dioInstance.get(
        "/bookmarks/check",
        queryParameters: {
          "url": url,
        },
      );
      return ApiResponse(
        successful: true,
        content: CheckBookmark.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      return const ApiResponse(successful: false);
    }
  }

  Future<ApiResponse<Bookmark>> postBookmark(PostBookmark bookmark) async {
    try {
      final response = await dioInstance.post(
        "/bookmarks/",
        data: FormData.fromMap(bookmark.toJson()),
      );
      return ApiResponse(
        successful: true,
        content: Bookmark.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      return const ApiResponse(successful: false);
    }
  }

  Future<ApiResponse<TagsResponse>> fetchTags({String? q, int? limit, int? offset}) async {
    try {
      final response = await dioInstance.get(
        "/tags/",
        queryParameters: {
          "q": q,
          "limit": limit,
          "offset": offset,
        },
      );
      return ApiResponse(
        successful: true,
        content: TagsResponse.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      return const ApiResponse(successful: false);
    }
  }

  Future<ApiResponse<Tag>> postTag(String name) async {
    try {
      final response = await dioInstance.post(
        "/tags/",
        data: FormData.fromMap({"name": name}),
      );
      return ApiResponse(
        successful: true,
        content: Tag.fromJson(response.data),
      );
    } catch (e, stackTrace) {
      Sentry.captureException(e, stackTrace: stackTrace);
      return const ApiResponse(successful: false);
    }
  }
}
