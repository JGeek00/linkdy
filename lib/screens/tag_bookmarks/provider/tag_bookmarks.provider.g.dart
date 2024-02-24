// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagIdBookmarksRequestHash() =>
    r'2deadbe50293503ac94cd5d8656d6055c6bdc190';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [tagIdBookmarksRequest].
@ProviderFor(tagIdBookmarksRequest)
const tagIdBookmarksRequestProvider = TagIdBookmarksRequestFamily();

/// See also [tagIdBookmarksRequest].
class TagIdBookmarksRequestFamily
    extends Family<AsyncValue<ApiResponse<TagBookmarksResponse?>>> {
  /// See also [tagIdBookmarksRequest].
  const TagIdBookmarksRequestFamily();

  /// See also [tagIdBookmarksRequest].
  TagIdBookmarksRequestProvider call(
    String tagId,
  ) {
    return TagIdBookmarksRequestProvider(
      tagId,
    );
  }

  @override
  TagIdBookmarksRequestProvider getProviderOverride(
    covariant TagIdBookmarksRequestProvider provider,
  ) {
    return call(
      provider.tagId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tagIdBookmarksRequestProvider';
}

/// See also [tagIdBookmarksRequest].
class TagIdBookmarksRequestProvider
    extends AutoDisposeFutureProvider<ApiResponse<TagBookmarksResponse?>> {
  /// See also [tagIdBookmarksRequest].
  TagIdBookmarksRequestProvider(
    String tagId,
  ) : this._internal(
          (ref) => tagIdBookmarksRequest(
            ref as TagIdBookmarksRequestRef,
            tagId,
          ),
          from: tagIdBookmarksRequestProvider,
          name: r'tagIdBookmarksRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tagIdBookmarksRequestHash,
          dependencies: TagIdBookmarksRequestFamily._dependencies,
          allTransitiveDependencies:
              TagIdBookmarksRequestFamily._allTransitiveDependencies,
          tagId: tagId,
        );

  TagIdBookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tagId,
  }) : super.internal();

  final String tagId;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<TagBookmarksResponse?>> Function(
            TagIdBookmarksRequestRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TagIdBookmarksRequestProvider._internal(
        (ref) => create(ref as TagIdBookmarksRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tagId: tagId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<TagBookmarksResponse?>>
      createElement() {
    return _TagIdBookmarksRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TagIdBookmarksRequestProvider && other.tagId == tagId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tagId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TagIdBookmarksRequestRef
    on AutoDisposeFutureProviderRef<ApiResponse<TagBookmarksResponse?>> {
  /// The parameter `tagId` of this provider.
  String get tagId;
}

class _TagIdBookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<TagBookmarksResponse?>>
    with TagIdBookmarksRequestRef {
  _TagIdBookmarksRequestProviderElement(super.provider);

  @override
  String get tagId => (origin as TagIdBookmarksRequestProvider).tagId;
}

String _$tagBookmarksRequestHash() =>
    r'd198a94eafd0a78ef19de4064da4ddfba26ec1d3';

/// See also [tagBookmarksRequest].
@ProviderFor(tagBookmarksRequest)
const tagBookmarksRequestProvider = TagBookmarksRequestFamily();

/// See also [tagBookmarksRequest].
class TagBookmarksRequestFamily
    extends Family<AsyncValue<ApiResponse<BookmarksResponse>>> {
  /// See also [tagBookmarksRequest].
  const TagBookmarksRequestFamily();

  /// See also [tagBookmarksRequest].
  TagBookmarksRequestProvider call(
    Tag tag,
  ) {
    return TagBookmarksRequestProvider(
      tag,
    );
  }

  @override
  TagBookmarksRequestProvider getProviderOverride(
    covariant TagBookmarksRequestProvider provider,
  ) {
    return call(
      provider.tag,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tagBookmarksRequestProvider';
}

/// See also [tagBookmarksRequest].
class TagBookmarksRequestProvider
    extends AutoDisposeFutureProvider<ApiResponse<BookmarksResponse>> {
  /// See also [tagBookmarksRequest].
  TagBookmarksRequestProvider(
    Tag tag,
  ) : this._internal(
          (ref) => tagBookmarksRequest(
            ref as TagBookmarksRequestRef,
            tag,
          ),
          from: tagBookmarksRequestProvider,
          name: r'tagBookmarksRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tagBookmarksRequestHash,
          dependencies: TagBookmarksRequestFamily._dependencies,
          allTransitiveDependencies:
              TagBookmarksRequestFamily._allTransitiveDependencies,
          tag: tag,
        );

  TagBookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tag,
  }) : super.internal();

  final Tag tag;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<BookmarksResponse>> Function(
            TagBookmarksRequestRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TagBookmarksRequestProvider._internal(
        (ref) => create(ref as TagBookmarksRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tag: tag,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<BookmarksResponse>>
      createElement() {
    return _TagBookmarksRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TagBookmarksRequestProvider && other.tag == tag;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TagBookmarksRequestRef
    on AutoDisposeFutureProviderRef<ApiResponse<BookmarksResponse>> {
  /// The parameter `tag` of this provider.
  Tag get tag;
}

class _TagBookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<BookmarksResponse>>
    with TagBookmarksRequestRef {
  _TagBookmarksRequestProviderElement(super.provider);

  @override
  Tag get tag => (origin as TagBookmarksRequestProvider).tag;
}

String _$tagBookmarksHash() => r'bcfcc986b8d58ccff54ed6dec3ab2a1a8c33a4f7';

/// See also [TagBookmarks].
@ProviderFor(TagBookmarks)
final tagBookmarksProvider =
    AutoDisposeNotifierProvider<TagBookmarks, TagBookmarksModel>.internal(
  TagBookmarks.new,
  name: r'tagBookmarksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tagBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TagBookmarks = AutoDisposeNotifier<TagBookmarksModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
