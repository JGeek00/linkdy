// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchBookmarksHash() => r'c8d0bfb69cc6c295649a8e2d90f57352689cdab7';

/// See also [searchBookmarks].
@ProviderFor(searchBookmarks)
final searchBookmarksProvider =
    AutoDisposeFutureProvider<ApiResponse<Bookmarks>?>.internal(
  searchBookmarks,
  name: r'searchBookmarksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchBookmarksRef
    = AutoDisposeFutureProviderRef<ApiResponse<Bookmarks>?>;
String _$searchTagsHash() => r'6af31fef1a5020612f098550d54939852d88e187';

/// See also [searchTags].
@ProviderFor(searchTags)
final searchTagsProvider =
    AutoDisposeFutureProvider<ApiResponse<Tags>?>.internal(
  searchTags,
  name: r'searchTagsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchTagsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SearchTagsRef = AutoDisposeFutureProviderRef<ApiResponse<Tags>?>;
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
