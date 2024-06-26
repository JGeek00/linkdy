// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookmarksRequestHash() => r'b1ac82693d1acf93e0c5c51bbfe8674e1cf3f487';

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
    ReadStatus readStatus,
    SortingType type,
    SortingWay way,
    int limit,
  ) {
    return BookmarksRequestProvider(
      readStatus,
      type,
      way,
      limit,
    );
  }

  @override
  BookmarksRequestProvider getProviderOverride(
    covariant BookmarksRequestProvider provider,
  ) {
    return call(
      provider.readStatus,
      provider.type,
      provider.way,
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
    ReadStatus readStatus,
    SortingType type,
    SortingWay way,
    int limit,
  ) : this._internal(
          (ref) => bookmarksRequest(
            ref as BookmarksRequestRef,
            readStatus,
            type,
            way,
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
          readStatus: readStatus,
          type: type,
          way: way,
          limit: limit,
        );

  BookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.readStatus,
    required this.type,
    required this.way,
    required this.limit,
  }) : super.internal();

  final ReadStatus readStatus;
  final SortingType type;
  final SortingWay way;
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
        readStatus: readStatus,
        type: type,
        way: way,
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
    return other is BookmarksRequestProvider &&
        other.readStatus == readStatus &&
        other.type == type &&
        other.way == way &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, readStatus.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, way.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BookmarksRequestRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `readStatus` of this provider.
  ReadStatus get readStatus;

  /// The parameter `type` of this provider.
  SortingType get type;

  /// The parameter `way` of this provider.
  SortingWay get way;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _BookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<void> with BookmarksRequestRef {
  _BookmarksRequestProviderElement(super.provider);

  @override
  ReadStatus get readStatus => (origin as BookmarksRequestProvider).readStatus;
  @override
  SortingType get type => (origin as BookmarksRequestProvider).type;
  @override
  SortingWay get way => (origin as BookmarksRequestProvider).way;
  @override
  int get limit => (origin as BookmarksRequestProvider).limit;
}

String _$bookmarksRequestLoadMoreHash() =>
    r'3c1a68da25d2dc9d3b6520d3073186520dfe5e5d';

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
String _$bookmarksHash() => r'21cfb29298db2edcea8ce2b162e2f312972e9f3b';

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
