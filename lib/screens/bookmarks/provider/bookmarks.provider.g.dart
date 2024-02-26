// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookmarksRequestHash() => r'2da88ec52b4f959e6355f5f5fa8660d6cebd157d';

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

/// See also [bookmarksRequest].
@ProviderFor(bookmarksRequest)
const bookmarksRequestProvider = BookmarksRequestFamily();

/// See also [bookmarksRequest].
class BookmarksRequestFamily extends Family<AsyncValue<void>> {
  /// See also [bookmarksRequest].
  const BookmarksRequestFamily();

  /// See also [bookmarksRequest].
  BookmarksRequestProvider call(
    int limit,
  ) {
    return BookmarksRequestProvider(
      limit,
    );
  }

  @override
  BookmarksRequestProvider getProviderOverride(
    covariant BookmarksRequestProvider provider,
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
  String? get name => r'bookmarksRequestProvider';
}

/// See also [bookmarksRequest].
class BookmarksRequestProvider extends AutoDisposeFutureProvider<void> {
  /// See also [bookmarksRequest].
  BookmarksRequestProvider(
    int limit,
  ) : this._internal(
          (ref) => bookmarksRequest(
            ref as BookmarksRequestRef,
            limit,
          ),
          from: bookmarksRequestProvider,
          name: r'bookmarksRequestProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookmarksRequestHash,
          dependencies: BookmarksRequestFamily._dependencies,
          allTransitiveDependencies:
              BookmarksRequestFamily._allTransitiveDependencies,
          limit: limit,
        );

  BookmarksRequestProvider._internal(
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
    FutureOr<void> Function(BookmarksRequestRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BookmarksRequestProvider._internal(
        (ref) => create(ref as BookmarksRequestRef),
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
    return _BookmarksRequestProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BookmarksRequestProvider && other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookmarksRequestRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `limit` of this provider.
  int get limit;
}

class _BookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<void> with BookmarksRequestRef {
  _BookmarksRequestProviderElement(super.provider);

  @override
  int get limit => (origin as BookmarksRequestProvider).limit;
}

String _$bookmarksRequestLoadMoreHash() =>
    r'36b0703684218e1c6bf01643788d5f9d3da32327';

/// See also [bookmarksRequestLoadMore].
@ProviderFor(bookmarksRequestLoadMore)
final bookmarksRequestLoadMoreProvider =
    AutoDisposeFutureProvider<void>.internal(
  bookmarksRequestLoadMore,
  name: r'bookmarksRequestLoadMoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookmarksRequestLoadMoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BookmarksRequestLoadMoreRef = AutoDisposeFutureProviderRef<void>;
String _$bookmarksHash() => r'a2bd6f3226b5a1b9c19b536b31122fb5b449ff6a';

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
