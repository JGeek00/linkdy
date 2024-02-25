// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSearchBookmarksHash() =>
    r'a854d28b2c2b6761cfd716bcbe081b54fbbf29ef';

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

/// See also [fetchSearchBookmarks].
@ProviderFor(fetchSearchBookmarks)
const fetchSearchBookmarksProvider = FetchSearchBookmarksFamily();

/// See also [fetchSearchBookmarks].
class FetchSearchBookmarksFamily extends Family<AsyncValue<void>> {
  /// See also [fetchSearchBookmarks].
  const FetchSearchBookmarksFamily();

  /// See also [fetchSearchBookmarks].
  FetchSearchBookmarksProvider call(
    int limit,
  ) {
    return FetchSearchBookmarksProvider(
      limit,
    );
  }

  @override
  FetchSearchBookmarksProvider getProviderOverride(
    covariant FetchSearchBookmarksProvider provider,
  ) {
    return call(
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
  String? get name => r'fetchSearchBookmarksProvider';
}

/// See also [fetchSearchBookmarks].
class FetchSearchBookmarksProvider extends AutoDisposeFutureProvider<void> {
  /// See also [fetchSearchBookmarks].
  FetchSearchBookmarksProvider(
    int limit,
  ) : this._internal(
          (ref) => fetchSearchBookmarks(
            ref as FetchSearchBookmarksRef,
            limit,
          ),
          from: fetchSearchBookmarksProvider,
          name: r'fetchSearchBookmarksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSearchBookmarksHash,
          dependencies: FetchSearchBookmarksFamily._dependencies,
          allTransitiveDependencies:
              FetchSearchBookmarksFamily._allTransitiveDependencies,
          limit: limit,
        );

  FetchSearchBookmarksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
  }) : super.internal();

  final int limit;

  @override
  Override overrideWith(
    FutureOr<void> Function(FetchSearchBookmarksRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSearchBookmarksProvider._internal(
        (ref) => create(ref as FetchSearchBookmarksRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _FetchSearchBookmarksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSearchBookmarksProvider && other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSearchBookmarksRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `limit` of this provider.
  int get limit;
}

class _FetchSearchBookmarksProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with FetchSearchBookmarksRef {
  _FetchSearchBookmarksProviderElement(super.provider);

  @override
  int get limit => (origin as FetchSearchBookmarksProvider).limit;
}

String _$fetchSearchBookmarksLoadMoreHash() =>
    r'f07a6a89f5a87a0f26d3a8d2d49f1d98ce36a287';

/// See also [fetchSearchBookmarksLoadMore].
@ProviderFor(fetchSearchBookmarksLoadMore)
final fetchSearchBookmarksLoadMoreProvider =
    AutoDisposeFutureProvider<void>.internal(
  fetchSearchBookmarksLoadMore,
  name: r'fetchSearchBookmarksLoadMoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchSearchBookmarksLoadMoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchSearchBookmarksLoadMoreRef = AutoDisposeFutureProviderRef<void>;
String _$searchBookmarksHash() => r'843fe597bceab3e3f512b5b4a40ddd1dbeb09f9d';

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
