// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_link.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$checkBookmarkHash() => r'a4397a4497e3b7c8dec6027bb927371cc85e526c';

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

String _$addBookmarkHash() => r'94d54330832874c142e417df21522f5faac27f9e';

/// See also [addBookmark].
@ProviderFor(addBookmark)
const addBookmarkProvider = AddBookmarkFamily();

/// See also [addBookmark].
class AddBookmarkFamily extends Family<AsyncValue<ApiResponse<Bookmark>>> {
  /// See also [addBookmark].
  const AddBookmarkFamily();

  /// See also [addBookmark].
  AddBookmarkProvider call(
    PostBookmark newBookmark,
  ) {
    return AddBookmarkProvider(
      newBookmark,
    );
  }

  @override
  AddBookmarkProvider getProviderOverride(
    covariant AddBookmarkProvider provider,
  ) {
    return call(
      provider.newBookmark,
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
  String? get name => r'addBookmarkProvider';
}

/// See also [addBookmark].
class AddBookmarkProvider
    extends AutoDisposeFutureProvider<ApiResponse<Bookmark>> {
  /// See also [addBookmark].
  AddBookmarkProvider(
    PostBookmark newBookmark,
  ) : this._internal(
          (ref) => addBookmark(
            ref as AddBookmarkRef,
            newBookmark,
          ),
          from: addBookmarkProvider,
          name: r'addBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addBookmarkHash,
          dependencies: AddBookmarkFamily._dependencies,
          allTransitiveDependencies:
              AddBookmarkFamily._allTransitiveDependencies,
          newBookmark: newBookmark,
        );

  AddBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.newBookmark,
  }) : super.internal();

  final PostBookmark newBookmark;

  @override
  Override overrideWith(
    FutureOr<ApiResponse<Bookmark>> Function(AddBookmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddBookmarkProvider._internal(
        (ref) => create(ref as AddBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        newBookmark: newBookmark,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse<Bookmark>> createElement() {
    return _AddBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddBookmarkProvider && other.newBookmark == newBookmark;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, newBookmark.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddBookmarkRef on AutoDisposeFutureProviderRef<ApiResponse<Bookmark>> {
  /// The parameter `newBookmark` of this provider.
  PostBookmark get newBookmark;
}

class _AddBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse<Bookmark>>
    with AddBookmarkRef {
  _AddBookmarkProviderElement(super.provider);

  @override
  PostBookmark get newBookmark => (origin as AddBookmarkProvider).newBookmark;
}

String _$addLinkHash() => r'0e9fcd2cca9fa5e195072163a11ae09b7bbe903a';

/// See also [AddLink].
@ProviderFor(AddLink)
final addLinkProvider =
    AutoDisposeNotifierProvider<AddLink, AddLinkModel>.internal(
  AddLink.new,
  name: r'addLinkProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addLinkHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddLink = AutoDisposeNotifier<AddLinkModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
