// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$linksRequestHash() => r'be41da02d669705dc7723ba9fbab0c5b59fd233b';

/// See also [linksRequest].
@ProviderFor(linksRequest)
final linksRequestProvider =
    AutoDisposeFutureProvider<ApiResponse<Bookmarks>>.internal(
  linksRequest,
  name: r'linksRequestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$linksRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LinksRequestRef = AutoDisposeFutureProviderRef<ApiResponse<Bookmarks>>;
String _$linksHash() => r'a609009ca33885b1efd0d7c1122bee8299b98af3';

/// See also [Links].
@ProviderFor(Links)
final linksProvider = AutoDisposeNotifierProvider<Links, LinksModel>.internal(
  Links.new,
  name: r'linksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$linksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Links = AutoDisposeNotifier<LinksModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
