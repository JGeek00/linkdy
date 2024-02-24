// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagsRequestHash() => r'52b3c212ed070b39718aef1010c44fbb7120ef51';

/// See also [tagsRequest].
@ProviderFor(tagsRequest)
final tagsRequestProvider =
    AutoDisposeFutureProvider<ApiResponse<TagsResponse>>.internal(
  tagsRequest,
  name: r'tagsRequestProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tagsRequestHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TagsRequestRef
    = AutoDisposeFutureProviderRef<ApiResponse<TagsResponse>>;
String _$tagsHash() => r'6e26b566459377a3a6bc0f1884b9a05855151d3f';

/// See also [Tags].
@ProviderFor(Tags)
final tagsProvider = AutoDisposeNotifierProvider<Tags, TagsModel>.internal(
  Tags.new,
  name: r'tagsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tagsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Tags = AutoDisposeNotifier<TagsModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
