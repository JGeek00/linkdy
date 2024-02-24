// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSearchBookmarksHash() =>
    r'2b871e9d1f75fb7f7b969f819cfdd9442593c4cb';

/// See also [fetchSearchBookmarks].
@ProviderFor(fetchSearchBookmarks)
final fetchSearchBookmarksProvider =
    AutoDisposeFutureProvider<ApiResponse<BookmarksResponse>?>.internal(
  fetchSearchBookmarks,
  name: r'fetchSearchBookmarksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchSearchBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchSearchBookmarksRef
    = AutoDisposeFutureProviderRef<ApiResponse<BookmarksResponse>?>;
String _$searchBookmarksHash() => r'56efd123e03f6a080f4a61cc91794aab2e563199';

/// See also [SearchBookmarks].
@ProviderFor(SearchBookmarks)
final searchBookmarksProvider =
    AutoDisposeNotifierProvider<SearchBookmarks, SearchBookmarksModel>.internal(
  SearchBookmarks.new,
  name: r'searchBookmarksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchBookmarks = AutoDisposeNotifier<SearchBookmarksModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
