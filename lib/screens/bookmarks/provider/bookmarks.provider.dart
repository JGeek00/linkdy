import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/webview/ui/webview.dart';
import 'package:linkdy/screens/bookmarks/provider/common_functions.dart';
import 'package:linkdy/screens/bookmarks/model/bookmarks.model.dart';
import 'package:linkdy/screens/webview/ui/invalid_bookmark.dart';

import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/utils/open_url.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/constants/enums.dart';

part 'bookmarks.provider.g.dart';

@riverpod
FutureOr<void> bookmarksRequest(
  BookmarksRequestRef ref,
  ReadStatus readStatus,
  SortingType type,
  SortingWay way,
  int limit,
) async {
  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        limit: limit,
        offset: 0,
        unread: readStatus,
        sort: "${type == SortingType.title ? "title" : "added"}_${way == SortingWay.ascendant ? "asc" : "desc"}",
      );

  if (result.successful == true && result.content?.results != null && result.content?.count != null) {
    ref.read(bookmarksProvider).bookmarks = result.content!.results!;
    ref.read(bookmarksProvider).maxNumber = result.content!.count!;
    ref.read(bookmarksProvider).currentPage = 0;
    ref.read(bookmarksProvider).loadingMore = false;
    ref.read(bookmarksProvider).inialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(bookmarksProvider).inialLoadStatus = LoadStatus.error;
  }
  ref.read(bookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> bookmarksRequestLoadMore(BookmarksRequestLoadMoreRef ref) async {
  final provider = ref.watch(bookmarksProvider);

  final sortingType = ref.watch(bookmarksProvider).sortingType;
  final sortingWay = ref.watch(bookmarksProvider).sortingWay;

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        limit: provider.limit,
        offset: newOffset,
        unread: ref.read(bookmarksProvider).readStatus,
        sort:
            "${sortingType == SortingType.title ? "title" : "added"}_${sortingWay == SortingWay.ascendant ? "asc" : "desc"}",
      );

  if (result.successful == true) {
    // ref.read(faviconStoreProvider.notifier).loadFavicons(result.content!.results!);
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(bookmarksProvider.notifier).setLoadingMore(false);
}

const _webViewRoute = "wb";
const _webViewRoutePath = "/wb";

@riverpod
class Bookmarks extends _$Bookmarks {
  @override
  BookmarksModel build() {
    final model = BookmarksModel(
      bookmarks: [],
      webViewRouter: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const SizedBox(),
            routes: [
              GoRoute(
                path: _webViewRoute,
                pageBuilder: (context, state) {
                  final extra = state.extra;
                  if (extra is Bookmark) {
                    return CustomTransitionPage(
                      child: WebViewScreen(bookmark: extra),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
                    );
                  } else {
                    return CustomTransitionPage(
                      child: const InvalidBookmarkScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
                    );
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
    ref.read(bookmarksRequestProvider(model.readStatus, model.sortingType, model.sortingWay, model.limit));
    return model;
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }

  void setLoadingMore(bool value) {
    state.loadingMore = value;
    ref.notifyListeners();
  }

  void notifyListeners() {
    ref.notifyListeners();
  }

  void setBookmarks(List<Bookmark> bookmarks) {
    state.bookmarks = bookmarks;
    ref.notifyListeners();
  }

  void setReadStatus(ReadStatus status) {
    state.readStatus = status;
    ref.read(bookmarksRequestProvider(status, state.sortingType, state.sortingWay, state.limit));
    ref.notifyListeners();
  }

  void setSortingType(SortingType type) {
    state.sortingType = type;
    ref.read(bookmarksRequestProvider(state.readStatus, type, state.sortingWay, state.limit));
    ref.notifyListeners();
  }

  void setSortingWay(SortingWay way) {
    state.sortingWay = way;
    ref.read(bookmarksRequestProvider(state.readStatus, state.sortingType, way, state.limit));
    ref.notifyListeners();
  }

  void pushRoute(String path, bool splitMode) {
    if (splitMode == true && state.webViewRouter.canPop()) {
      state.selectedBookmark = null;
      ref.notifyListeners();
      state.webViewRouter.pop();
    }
    ref.read(routerProvider).push(path);
  }

  void clearSelectedBookmark() {
    state.selectedBookmark = null;
    ref.notifyListeners();
  }

  void selectBookmark(Bookmark bookmark, double width) {
    if (ref.watch(appStatusProvider).openLinksBrowser == OpenLinksBrowser.browserCustomTab) {
      openUrlCustomTab(bookmark.url!);
    } else if (ref.watch(appStatusProvider).openLinksBrowser == OpenLinksBrowser.systemBrowser) {
      openUrlSystemBrowser(bookmark.url!);
    } else {
      if (width <= Sizes.tabletBreakpoint) {
        ref.watch(routerProvider).push(RoutesPaths.webview, extra: bookmark);
      } else if (bookmark != state.selectedBookmark) {
        state.webViewRouter.go(_webViewRoutePath, extra: bookmark);
      }
      state.selectedBookmark = bookmark;
      ref.notifyListeners();
    }
  }

  Future<void> refresh() async {
    await ref.read(bookmarksRequestProvider(state.readStatus, state.sortingType, state.sortingWay, state.limit).future);
  }

  void deleteBookmark(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.deleteBookmark<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result == true) {
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
    }
  }

  void markAsReadUnread(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.markAsReadUnread<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result != null) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
      ref.notifyListeners();
    }
  }

  void archiveUnarchive(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.archiveUnarchive<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result == true) {
      // On this case the bookmark always will pass from unarchived to archived
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
    }
  }

  void shareUnshare(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.shareUnshare<BookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.bookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result != null) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
      ref.notifyListeners();
    }
  }
}
