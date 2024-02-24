// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchBookmarksHash() => r'301f5c0355044978b6ddcfa13478b8729773f290';

/// See also [searchBookmarks].
@ProviderFor(searchBookmarks)
final searchBookmarksProvider =
    AutoDisposeFutureProvider<ApiResponse<BookmarksResponse>?>.internal(
  searchBookmarks,
  name: r'searchBookmarksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchBookmarksRef
    = AutoDisposeFutureProviderRef<ApiResponse<BookmarksResponse>?>;
String _$searchTagsHash() => r'1fc8cf44f512490fcf369b843bf3ca137e867bb6';

/// See also [searchTags].
@ProviderFor(searchTags)
final searchTagsProvider =
    AutoDisposeFutureProvider<ApiResponse<TagsResponse>?>.internal(
  searchTags,
  name: r'searchTagsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchTagsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchTagsRef
    = AutoDisposeFutureProviderRef<ApiResponse<TagsResponse>?>;
String _$searchHash() => r'bdb992f3343d912d9422fa5da14ad0d5704f18e7';

/// See also [Search].
@ProviderFor(Search)
final searchProvider =
    AutoDisposeNotifierProvider<Search, SearchModel>.internal(
  Search.new,
  name: r'searchProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Search = AutoDisposeNotifier<SearchModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
