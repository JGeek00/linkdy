// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagBookmarksRequestHash() =>
    r'795205672ccd02914dbb2e15dbcf93bac94c645c';

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
    r'36205474b3c1d3f18f31af56cc97c700f328a4bc';

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
String _$filteredBookmarksRequestHash() =>
    r'f5352c5076d8bf2ed0cf738bdc0c0cffc9d18a25';

/// See also [filteredBookmarksRequest].
@ProviderFor(filteredBookmarksRequest)
const filteredBookmarksRequestProvider = FilteredBookmarksRequestFamily();

/// See also [filteredBookmarksRequest].
class FilteredBookmarksRequestFamily extends Family<AsyncValue<void>> {
  /// See also [filteredBookmarksRequest].
  const FilteredBookmarksRequestFamily();

  /// See also [filteredBookmarksRequest].
  FilteredBookmarksRequestProvider call(
    FilteredBookmarksMode mode,
    int limit,
  ) {
    return FilteredBookmarksRequestProvider(
      mode,
      limit,
    );
  }

  @override
  FilteredBookmarksRequestProvider getProviderOverride(
    covariant FilteredBookmarksRequestProvider provider,
  ) {
    return call(
      provider.mode,
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
  String? get name => r'filteredBookmarksRequestProvider';
}

/// See also [filteredBookmarksRequest].
class FilteredBookmarksRequestProvider extends AutoDisposeFutureProvider<void> {
  /// See also [filteredBookmarksRequest].
  FilteredBookmarksRequestProvider(
    FilteredBookmarksMode mode,
    int limit,
  ) : this._internal(
          (ref) => filteredBookmarksRequest(
            ref as FilteredBookmarksRequestRef,
            mode,
            limit,
          ),
          from: filteredBookmarksRequestProvider,
          name: r'filteredBookmarksRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredBookmarksRequestHash,
          dependencies: FilteredBookmarksRequestFamily._dependencies,
          allTransitiveDependencies:
              FilteredBookmarksRequestFamily._allTransitiveDependencies,
          mode: mode,
          limit: limit,
        );

  FilteredBookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mode,
    required this.limit,
  }) : super.internal();

  final FilteredBookmarksMode mode;
  final int limit;

  @override
  Override overrideWith(
    FutureOr<void> Function(FilteredBookmarksRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredBookmarksRequestProvider._internal(
        (ref) => create(ref as FilteredBookmarksRequestRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mode: mode,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _FilteredBookmarksRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredBookmarksRequestProvider &&
        other.mode == mode &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mode.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilteredBookmarksRequestRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `mode` of this provider.
  FilteredBookmarksMode get mode;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _FilteredBookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with FilteredBookmarksRequestRef {
  _FilteredBookmarksRequestProviderElement(super.provider);

  @override
  FilteredBookmarksMode get mode =>
      (origin as FilteredBookmarksRequestProvider).mode;
  @override
  int get limit => (origin as FilteredBookmarksRequestProvider).limit;
}

String _$filteredBookmarksRequestLoadMoreHash() =>
    r'a40280a01fcfa3892c76287a5e67e5ab9cc00cd5';

/// See also [filteredBookmarksRequestLoadMore].
@ProviderFor(filteredBookmarksRequestLoadMore)
final filteredBookmarksRequestLoadMoreProvider =
    AutoDisposeFutureProvider<void>.internal(
  filteredBookmarksRequestLoadMore,
  name: r'filteredBookmarksRequestLoadMoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredBookmarksRequestLoadMoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredBookmarksRequestLoadMoreRef
    = AutoDisposeFutureProviderRef<void>;
String _$filteredBookmarksHash() => r'8f5229e1bb6b0d50c7df4fcb6c3ef6c2aab898af';

/// See also [FilteredBookmarks].
@ProviderFor(FilteredBookmarks)
final filteredBookmarksProvider = AutoDisposeNotifierProvider<FilteredBookmarks,
    FilteredBookmarksModel>.internal(
  FilteredBookmarks.new,
  name: r'filteredBookmarksProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FilteredBookmarks = AutoDisposeNotifier<FilteredBookmarksModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
