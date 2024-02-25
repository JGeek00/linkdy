// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favicon_loader.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchFaviconHash() => r'90d9f0060aa68162174a1d76a6faeee5ae820494';

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

/// See also [fetchFavicon].
@ProviderFor(fetchFavicon)
const fetchFaviconProvider = FetchFaviconFamily();

/// See also [fetchFavicon].
class FetchFaviconFamily extends Family<AsyncValue<FaviconItem?>> {
  /// See also [fetchFavicon].
  const FetchFaviconFamily();

  /// See also [fetchFavicon].
  FetchFaviconProvider call(
    String bookmarkUrl,
  ) {
    return FetchFaviconProvider(
      bookmarkUrl,
    );
  }

  @override
  FetchFaviconProvider getProviderOverride(
    covariant FetchFaviconProvider provider,
  ) {
    return call(
      provider.bookmarkUrl,
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
  String? get name => r'fetchFaviconProvider';
}

/// See also [fetchFavicon].
class FetchFaviconProvider extends AutoDisposeFutureProvider<FaviconItem?> {
  /// See also [fetchFavicon].
  FetchFaviconProvider(
    String bookmarkUrl,
  ) : this._internal(
          (ref) => fetchFavicon(
            ref as FetchFaviconRef,
            bookmarkUrl,
          ),
          from: fetchFaviconProvider,
          name: r'fetchFaviconProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchFaviconHash,
          dependencies: FetchFaviconFamily._dependencies,
          allTransitiveDependencies:
              FetchFaviconFamily._allTransitiveDependencies,
          bookmarkUrl: bookmarkUrl,
        );

  FetchFaviconProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookmarkUrl,
  }) : super.internal();

  final String bookmarkUrl;

  @override
  Override overrideWith(
    FutureOr<FaviconItem?> Function(FetchFaviconRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchFaviconProvider._internal(
        (ref) => create(ref as FetchFaviconRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookmarkUrl: bookmarkUrl,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FaviconItem?> createElement() {
    return _FetchFaviconProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchFaviconProvider && other.bookmarkUrl == bookmarkUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookmarkUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchFaviconRef on AutoDisposeFutureProviderRef<FaviconItem?> {
  /// The parameter `bookmarkUrl` of this provider.
  String get bookmarkUrl;
}

class _FetchFaviconProviderElement
    extends AutoDisposeFutureProviderElement<FaviconItem?>
    with FetchFaviconRef {
  _FetchFaviconProviderElement(super.provider);

  @override
  String get bookmarkUrl => (origin as FetchFaviconProvider).bookmarkUrl;
}

String _$faviconStoreHash() => r'a082b856f1564d04dfd9209b7c2efaff6f146e68';

/// See also [FaviconStore].
@ProviderFor(FaviconStore)
final faviconStoreProvider =
    NotifierProvider<FaviconStore, FaviconLoaderModel>.internal(
  FaviconStore.new,
  name: r'faviconStoreProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$faviconStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$FaviconStore = Notifier<FaviconLoaderModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
