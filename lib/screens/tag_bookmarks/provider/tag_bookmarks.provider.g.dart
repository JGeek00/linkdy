// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tagBookmarksRequestHash() =>
    r'0625c18022480eb1356396d9e46f677f21106797';

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
class TagBookmarksRequestFamily
    extends Family<AsyncValue<ApiResponse<BookmarksResponse>>> {
  /// See also [tagBookmarksRequest].
  const TagBookmarksRequestFamily();

  /// See also [tagBookmarksRequest].
  TagBookmarksRequestProvider call(
    String tagName,
  ) {
    return TagBookmarksRequestProvider(
      tagName,
    );
  }

  @override
  TagBookmarksRequestProvider getProviderOverride(
    covariant TagBookmarksRequestProvider provider,
  ) {
    return call(
      provider.tagName,
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
    String tagName,
  ) : this._internal(
          (ref) => tagBookmarksRequest(
            ref as TagBookmarksRequestRef,
            tagName,
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
          tagName: tagName,
        );

  TagBookmarksRequestProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tagName,
  }) : super.internal();

  final String tagName;

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
        tagName: tagName,
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
    return other is TagBookmarksRequestProvider && other.tagName == tagName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tagName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TagBookmarksRequestRef
    on AutoDisposeFutureProviderRef<ApiResponse<BookmarksResponse>> {
  /// The parameter `tagName` of this provider.
  String get tagName;
}

class _TagBookmarksRequestProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<BookmarksResponse>>
    with TagBookmarksRequestRef {
  _TagBookmarksRequestProviderElement(super.provider);

  @override
  String get tagName => (origin as TagBookmarksRequestProvider).tagName;
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
