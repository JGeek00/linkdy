// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookmarksRequestHash() => r'c80328ae148c39617997a44ac5c34f27daf25a8a';

/// See also [bookmarksRequest].
@ProviderFor(bookmarksRequest)
final bookmarksRequestProvider =
    AutoDisposeFutureProvider<ApiResponse<BookmarksResponse>>.internal(
  bookmarksRequest,
  name: r'bookmarksRequestProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookmarksRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BookmarksRequestRef
    = AutoDisposeFutureProviderRef<ApiResponse<BookmarksResponse>>;
String _$bookmarksHash() => r'4a1726830b4e7bbc131d69761aeb4702ca6b7180';

/// See also [Bookmarks].
@ProviderFor(Bookmarks)
final bookmarksProvider =
    AutoDisposeNotifierProvider<Bookmarks, BookmarksModel>.internal(
  Bookmarks.new,
  name: r'bookmarksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Bookmarks = AutoDisposeNotifier<BookmarksModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
