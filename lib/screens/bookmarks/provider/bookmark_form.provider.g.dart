// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_form.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkBookmarkHash() => r'8eeb8cb7ee801ca7ed1b604b56a4301a86568c54';

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

/// See also [checkBookmark].
@ProviderFor(checkBookmark)
const checkBookmarkProvider = CheckBookmarkFamily();

/// See also [checkBookmark].
class CheckBookmarkFamily
    extends Family<AsyncValue<ApiResponse<CheckBookmark>>> {
  /// See also [checkBookmark].
  const CheckBookmarkFamily();

  /// See also [checkBookmark].
  CheckBookmarkProvider call(
    String url,
  ) {
    return CheckBookmarkProvider(
      url,
    );
  }

  @override
  CheckBookmarkProvider getProviderOverride(
    covariant CheckBookmarkProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'checkBookmarkProvider';
}

/// See also [checkBookmark].
class CheckBookmarkProvider
    extends AutoDisposeFutureProvider<ApiResponse<CheckBookmark>> {
  /// See also [checkBookmark].
  CheckBookmarkProvider(
    String url,
  ) : this._internal(
          (ref) => checkBookmark(
            ref as CheckBookmarkRef,
            url,
          ),
          from: checkBookmarkProvider,
          name: r'checkBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkBookmarkHash,
          dependencies: CheckBookmarkFamily._dependencies,
          allTransitiveDependencies:
              CheckBookmarkFamily._allTransitiveDependencies,
          url: url,
        );

  CheckBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<CheckBookmark>> Function(CheckBookmarkRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CheckBookmarkProvider._internal(
        (ref) => create(ref as CheckBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<CheckBookmark>> createElement() {
    return _CheckBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckBookmarkProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CheckBookmarkRef
    on AutoDisposeFutureProviderRef<ApiResponse<CheckBookmark>> {
  /// The parameter `url` of this provider.
  String get url;
}

class _CheckBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<CheckBookmark>>
    with CheckBookmarkRef {
  _CheckBookmarkProviderElement(super.provider);

  @override
  String get url => (origin as CheckBookmarkProvider).url;
}

String _$getTagsHash() => r'16138d28ed9ee5b99f5c84935f7a1eb98fad2a3b';

/// See also [getTags].
@ProviderFor(getTags)
final getTagsProvider =
    AutoDisposeFutureProvider<ApiResponse<TagsResponse>>.internal(
  getTags,
  name: r'getTagsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getTagsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetTagsRef = AutoDisposeFutureProviderRef<ApiResponse<TagsResponse>>;
String _$bookmarkFormHash() => r'9d99362f0234456b26e4ef16179455862b300fe4';

/// See also [BookmarkForm].
@ProviderFor(BookmarkForm)
final bookmarkFormProvider =
    AutoDisposeNotifierProvider<BookmarkForm, BookmarkFormModel>.internal(
  BookmarkForm.new,
  name: r'bookmarkFormProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bookmarkFormHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookmarkForm = AutoDisposeNotifier<BookmarkFormModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
