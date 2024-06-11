import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/webview/ui/webview.dart';
import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';
import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/provider/common_functions.dart';
import 'package:linkdy/screens/bookmarks/model/search_bookmarks.model.dart';

import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/utils/open_url.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/api_client.provider.dart';

part 'search_bookmarks.provider.g.dart';

@riverpod
FutureOr<void> fetchSearchBookmarks(FetchSearchBookmarksRef ref, int limit) async {
  if (ref.watch(searchBookmarksProvider).searchTerm == "") return null;

  final result = await ref.read(apiClientProvider)!.fetchBookmarks(
        q: ref.watch(searchBookmarksProvider).searchTerm,
        limit: limit,
        offset: 0,
      );

  if (result.successful == true) {
    ref.read(faviconStoreProvider.notifier).loadFavicons(result.content!.results!);
    ref.read(searchBookmarksProvider).bookmarks = result.content!.results!;
    ref.read(searchBookmarksProvider).maxNumber = result.content!.count!;
    ref.read(searchBookmarksProvider).currentPage = 0;
    ref.read(searchBookmarksProvider).loadingMore = false;
    ref.read(searchBookmarksProvider).inialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(searchBookmarksProvider).inialLoadStatus = LoadStatus.error;
  }
  ref.read(searchBookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> fetchSearchBookmarksLoadMore(FetchSearchBookmarksLoadMoreRef ref) async {
  final provider = ref.watch(searchBookmarksProvider);

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = await ref.watch(apiClientProvider)!.fetchBookmarks(
        q: provider.searchTerm,
        limit: provider.limit,
        offset: newOffset,
      );

  if (result.successful == true) {
    ref.read(faviconStoreProvider.notifier).loadFavicons(result.content!.results!);
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(searchBookmarksProvider.notifier).setLoadingMore(false);
}

const _webViewRoute = "wb";
const _webViewRoutePath = "/wb";

@riverpod
class SearchBookmarks extends _$SearchBookmarks {
  @override
  SearchBookmarksModel build() {
    final model = SearchBookmarksModel(
      searchController: TextEditingController(),
      bookmarks: [],
      webViewRouter: GoRouter(
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => const SizedBox(),
            routes: [
              GoRoute(
                path: _webViewRoute,
                pageBuilder: (context, state) => CustomTransitionPage(
                  child: WebViewScreen(bookmark: state.extra as Bookmark),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ref.read(fetchSearchBookmarksProvider(model.limit));
    return model;
  }

  void clearSearch() {
    state.searchController.clear();
    state.searchTerm = "";
    ref.notifyListeners();
  }

  void notifyOnChange() {
    ref.notifyListeners();
  }

  void setSearchTerm() {
    state.searchTerm = state.searchController.text;
    ref.notifyListeners();
  }

  void setLoadingMore(bool value) {
    state.loadingMore = value;
    ref.notifyListeners();
  }

  void setInitialLoadStatus(LoadStatus status) {
    state.inialLoadStatus = status;
    ref.notifyListeners();
  }

  void notifyListeners() {
    ref.notifyListeners();
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

  void deleteBookmark(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.deleteBookmark<SearchBookmarksModel>(
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
      scaffoldMessengerKey: ScaffoldMessengerKeys.search,
    );
    if (result == true) {
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
      ref
          .read(bookmarksProvider.notifier)
          .setBookmarks(ref.read(bookmarksProvider).bookmarks.where((b) => b.id != bookmark.id).toList());
    }
  }

  void markAsReadUnread(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.markAsReadUnread<SearchBookmarksModel>(
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
      scaffoldMessengerKey: ScaffoldMessengerKeys.search,
    );
    if (result != null) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
      ref.notifyListeners();
      ref
          .read(bookmarksProvider.notifier)
          .setBookmarks(ref.read(bookmarksProvider).bookmarks.map((b) => b.id == result.id ? result : b).toList());
    }
  }

  void archiveUnarchive(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.archiveUnarchive<SearchBookmarksModel>(
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
      scaffoldMessengerKey: ScaffoldMessengerKeys.search,
    );
    if (result == true) {
      // On this case the bookmark always will pass from unarchived to archived
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
      ref
          .read(bookmarksProvider.notifier)
          .setBookmarks(ref.read(bookmarksProvider).bookmarks.where((b) => b.id != bookmark.id).toList());
    }
  }

  void shareUnshare(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.shareUnshare<SearchBookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.search,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result != null) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
      ref.notifyListeners();
      ref
          .read(bookmarksProvider.notifier)
          .setBookmarks(ref.read(bookmarksProvider).bookmarks.map((b) => b.id == result.id ? result : b).toList());
    }
  }
}
