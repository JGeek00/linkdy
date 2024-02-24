// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchBookmarksHash() => r'5e5ace5cf7231e9c6b919578700fa1f34cf3aca3';

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
String _$searchTagsHash() => r'8470a8d018af64a04b1716b43d1d98dcb54f491d';

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
