import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/webview/ui/webview.dart';
import 'package:linkdy/screens/bookmarks/provider/common_functions.dart';
import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/filtered_bookmarks/model/filtered_bookmarks.model.dart';
import 'package:linkdy/screens/webview/ui/invalid_bookmark.dart';

import 'package:linkdy/config/sizes.dart';
import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/utils/open_url.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/providers/api_client.provider.dart';

part 'filtered_bookmarks.provider.g.dart';

@riverpod
FutureOr<void> tagBookmarksRequest(TagBookmarksRequestRef ref, Tag? tag, String? tagId, int limit) async {
  final tagResult = tag == null ? await ref.read(apiClientProvider)!.fetchTagById(tagId!) : null;
  if (tagResult != null && tagResult.successful == false) {
    ref.read(filteredBookmarksProvider.notifier).setInitialLoadStatus(LoadStatus.error);
    return;
  }

  final bookmarksResult = await ref.read(apiClientProvider)!.fetchBookmarks(
        q: tag != null ? "#${tag.name}" : tagResult!.content!.name,
        limit: limit,
        offset: 0,
      );

  if (bookmarksResult.successful == true) {
    ref.read(filteredBookmarksProvider).bookmarks = bookmarksResult.content!.results!;
    ref.read(filteredBookmarksProvider).maxNumber = bookmarksResult.content!.count!;
    if (tag == null) ref.read(filteredBookmarksProvider).tag = tagResult!.content!;
    ref.read(filteredBookmarksProvider).currentPage = 0;
    ref.read(filteredBookmarksProvider).loadingMore = false;
    ref.read(filteredBookmarksProvider).initialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(filteredBookmarksProvider).initialLoadStatus = LoadStatus.error;
  }

  ref.read(filteredBookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> tagBookmarksRequestLoadMore(FilteredBookmarksRequestLoadMoreRef ref) async {
  final provider = ref.read(filteredBookmarksProvider);

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = await ref.read(apiClientProvider)!.fetchBookmarks(
        q: provider.tag!.name,
        limit: provider.limit,
        offset: newOffset,
      );

  if (result.successful == true) {
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(filteredBookmarksProvider.notifier).setLoadingMore(false);
}

@riverpod
FutureOr<void> filteredBookmarksRequest(FilteredBookmarksRequestRef ref, FilteredBookmarksMode mode, int limit) async {
  final bookmarksResult = mode == FilteredBookmarksMode.shared
      ? await ref.read(apiClientProvider)!.fetchSharedBookmarks(
            limit: limit,
            offset: 0,
          )
      : await ref.read(apiClientProvider)!.fetchArchivedBookmarks(
            limit: limit,
            offset: 0,
          );

  if (bookmarksResult.successful == true) {
    ref.read(filteredBookmarksProvider).bookmarks = bookmarksResult.content!.results!;
    ref.read(filteredBookmarksProvider).maxNumber = bookmarksResult.content!.count!;
    ref.read(filteredBookmarksProvider).currentPage = 0;
    ref.read(filteredBookmarksProvider).loadingMore = false;
    ref.read(filteredBookmarksProvider).initialLoadStatus = LoadStatus.loaded;
  } else {
    ref.read(filteredBookmarksProvider).initialLoadStatus = LoadStatus.error;
  }

  ref.read(filteredBookmarksProvider.notifier).notifyListeners();
}

@riverpod
FutureOr<void> filteredBookmarksRequestLoadMore(TagBookmarksRequestLoadMoreRef ref) async {
  final provider = ref.read(filteredBookmarksProvider);

  final newOffset = provider.limit * (provider.currentPage + 1);

  final result = ref.read(filteredBookmarksProvider).filteredBookmarksMode == FilteredBookmarksMode.shared
      ? await ref.read(apiClientProvider)!.fetchSharedBookmarks(
            q: provider.tag!.name,
            limit: provider.limit,
            offset: newOffset,
          )
      : await ref.read(apiClientProvider)!.fetchArchivedBookmarks(
            q: provider.tag!.name,
            limit: provider.limit,
            offset: newOffset,
          );

  if (result.successful == true) {
    provider.bookmarks = [...provider.bookmarks, ...result.content!.results!];
    provider.maxNumber = result.content!.count!;
    provider.currentPage = provider.currentPage + 1;
  }

  ref.read(filteredBookmarksProvider.notifier).setLoadingMore(false);
}

const _webViewRoute = "wb";
const _webViewRoutePath = "/wb";

@riverpod
class FilteredBookmarks extends _$FilteredBookmarks {
  @override
  FilteredBookmarksModel build() {
    return FilteredBookmarksModel(
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
  }

  void setMode(FilteredBookmarksMode mode) {
    state.filteredBookmarksMode = mode;
  }

  void setCurrentPage(int page) {
    state.currentPage = page;
  }

  void setLimit(int limit) {
    state.limit = limit;
  }

  void setInitialLoadStatus(LoadStatus status) {
    state.initialLoadStatus = status;
    ref.notifyListeners();
  }

  void setLoadingMore(bool status) {
    state.loadingMore = status;
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

  Future<void> refresh() async {
    if (state.filteredBookmarksMode == FilteredBookmarksMode.tag) {
      await ref.read(
        tagBookmarksRequestProvider(state.tag, state.tagId, state.limit).future,
      );
    } else {
      await ref.read(
        filteredBookmarksRequestProvider(state.filteredBookmarksMode, state.limit).future,
      );
    }
  }

  void notifyListeners() {
    ref.notifyListeners();
  }

  void deleteBookmark(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.deleteBookmark<FilteredBookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.filteredBookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
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
    final result = await BookmarkCommonFunctions.markAsReadUnread<FilteredBookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.filteredBookmarks,
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

  void archiveUnarchive(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.archiveUnarchive<FilteredBookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.filteredBookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result == true) {
      state.bookmarks = state.bookmarks.where((b) => b.id != bookmark.id).toList();
      ref.notifyListeners();
      ref.read(bookmarksProvider.notifier).refresh();
    }
  }

  void shareUnshare(Bookmark bookmark) async {
    final result = await BookmarkCommonFunctions.shareUnshare<FilteredBookmarksModel>(
      scaffoldMessengerKey: ScaffoldMessengerKeys.filteredBookmarks,
      ref: ref,
      bookmark: bookmark,
      apiClient: ref.read(apiClientProvider)!,
    );
    if (result != null && state.filteredBookmarksMode == FilteredBookmarksMode.shared) {
      state.bookmarks = state.bookmarks.where((b) => b.id != result.id).toList();
    } else if (result != null && state.filteredBookmarksMode != FilteredBookmarksMode.shared) {
      state.bookmarks = state.bookmarks.map((b) => b.id == result.id ? result : b).toList();
    }
    ref.notifyListeners();
    if (result != null) {
      ref
          .read(bookmarksProvider.notifier)
          .setBookmarks(ref.read(bookmarksProvider).bookmarks.map((b) => b.id == result.id ? result : b).toList());
    }
  }
}
