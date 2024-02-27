// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagBookmarksRequestHash() =>
    r'9a4d4582b680da41069054429315f85976378524';

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

/// See also [tagBookmarksRequest].
@ProviderFor(tagBookmarksRequest)
const tagBookmarksRequestProvider = TagBookmarksRequestFamily();

/// See also [tagBookmarksRequest].
class TagBookmarksRequestFamily extends Family<AsyncValue<void>> {
  /// See also [tagBookmarksRequest].
  const TagBookmarksRequestFamily();

  /// See also [tagBookmarksRequest].
  TagBookmarksRequestProvider call(
    Tag? tag,
    String? tagId,
    int limit,
  ) {
    return TagBookmarksRequestProvider(
      tag,
      tagId,
      limit,
    );
  }

  @override
  TagBookmarksRequestProvider getProviderOverride(
    covariant TagBookmarksRequestProvider provider,
  ) {
    return call(
      provider.tag,
      provider.tagId,
      provider.limit,
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
class TagBookmarksRequestProvider extends AutoDisposeFutureProvider<void> {
  /// See also [tagBookmarksRequest].
  TagBookmarksRequestProvider(
    Tag? tag,
    String? tagId,
    int limit,
  ) : this._internal(
          (ref) => tagBookmarksRequest(
            ref as TagBookmarksRequestRef,
            tag,
            tagId,
            limit,
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
          tagId: tagId,
          limit: limit,
        );

  TagBookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tag,
    required this.tagId,
    required this.limit,
  }) : super.internal();

  final Tag? tag;
  final String? tagId;
  final int limit;

  @override
  Override overrideWith(
    FutureOr<void> Function(TagBookmarksRequestRef provider) create,
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
        tagId: tagId,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _TagBookmarksRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TagBookmarksRequestProvider &&
        other.tag == tag &&
        other.tagId == tagId &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tag.hashCode);
    hash = _SystemHash.combine(hash, tagId.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TagBookmarksRequestRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `tag` of this provider.
  Tag? get tag;

  /// The parameter `tagId` of this provider.
  String? get tagId;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _TagBookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<void> with TagBookmarksRequestRef {
  _TagBookmarksRequestProviderElement(super.provider);

  @override
  Tag? get tag => (origin as TagBookmarksRequestProvider).tag;
  @override
  String? get tagId => (origin as TagBookmarksRequestProvider).tagId;
  @override
  int get limit => (origin as TagBookmarksRequestProvider).limit;
}

String _$tagBookmarksRequestLoadMoreHash() =>
    r'ce7c52c446c2d4b8593fd06e818b3499bdc36a39';

/// See also [tagBookmarksRequestLoadMore].
@ProviderFor(tagBookmarksRequestLoadMore)
final tagBookmarksRequestLoadMoreProvider =
    AutoDisposeFutureProvider<void>.internal(
  tagBookmarksRequestLoadMore,
  name: r'tagBookmarksRequestLoadMoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tagBookmarksRequestLoadMoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TagBookmarksRequestLoadMoreRef = AutoDisposeFutureProviderRef<void>;
String _$tagBookmarksHash() => r'35a9ed7751c2d7e9644907f969fb03950b7b9a04';

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
