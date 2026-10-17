// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tagBookmarksRequest)
final tagBookmarksRequestProvider = TagBookmarksRequestFamily._();

final class TagBookmarksRequestProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  TagBookmarksRequestProvider._(
      {required TagBookmarksRequestFamily super.from,
      required (
        Tag?,
        String?,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'tagBookmarksRequestProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tagBookmarksRequestHash();

  @override
  String toString() {
    return r'tagBookmarksRequestProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as (
      Tag?,
      String?,
      int,
    );
    return tagBookmarksRequest(
      ref,
      argument.$1,
      argument.$2,
      argument.$3,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TagBookmarksRequestProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$tagBookmarksRequestHash() =>
    r'964a889d4e023a9503985a776636fb2f2ba8f371';

final class TagBookmarksRequestFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<void>,
            (
              Tag?,
              String?,
              int,
            )> {
  TagBookmarksRequestFamily._()
      : super(
          retry: null,
          name: r'tagBookmarksRequestProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  TagBookmarksRequestProvider call(
    Tag? tag,
    String? tagId,
    int limit,
  ) =>
      TagBookmarksRequestProvider._(argument: (
        tag,
        tagId,
        limit,
      ), from: this);

  @override
  String toString() => r'tagBookmarksRequestProvider';
}

@ProviderFor(tagBookmarksRequestLoadMore)
final tagBookmarksRequestLoadMoreProvider =
    TagBookmarksRequestLoadMoreProvider._();

final class TagBookmarksRequestLoadMoreProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  TagBookmarksRequestLoadMoreProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tagBookmarksRequestLoadMoreProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tagBookmarksRequestLoadMoreHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return tagBookmarksRequestLoadMore(ref);
  }
}

String _$tagBookmarksRequestLoadMoreHash() =>
    r'4df7298cbcdc19e9984f82f01bd6d8577bfa03d0';

@ProviderFor(filteredBookmarksRequest)
final filteredBookmarksRequestProvider = FilteredBookmarksRequestFamily._();

final class FilteredBookmarksRequestProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  FilteredBookmarksRequestProvider._(
      {required FilteredBookmarksRequestFamily super.from,
      required (
        FilteredBookmarksMode,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'filteredBookmarksRequestProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredBookmarksRequestHash();

  @override
  String toString() {
    return r'filteredBookmarksRequestProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as (
      FilteredBookmarksMode,
      int,
    );
    return filteredBookmarksRequest(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredBookmarksRequestProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filteredBookmarksRequestHash() =>
    r'652effd60d32e4abe3628c3047c29d6fd9c590af';

final class FilteredBookmarksRequestFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<void>,
            (
              FilteredBookmarksMode,
              int,
            )> {
  FilteredBookmarksRequestFamily._()
      : super(
          retry: null,
          name: r'filteredBookmarksRequestProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FilteredBookmarksRequestProvider call(
    FilteredBookmarksMode mode,
    int limit,
  ) =>
      FilteredBookmarksRequestProvider._(argument: (
        mode,
        limit,
      ), from: this);

  @override
  String toString() => r'filteredBookmarksRequestProvider';
}

@ProviderFor(filteredBookmarksRequestLoadMore)
final filteredBookmarksRequestLoadMoreProvider =
    FilteredBookmarksRequestLoadMoreProvider._();

final class FilteredBookmarksRequestLoadMoreProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  FilteredBookmarksRequestLoadMoreProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredBookmarksRequestLoadMoreProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredBookmarksRequestLoadMoreHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return filteredBookmarksRequestLoadMore(ref);
  }
}

String _$filteredBookmarksRequestLoadMoreHash() =>
    r'b47af98a7551e9a72688cda9dfe2fd88091cd84a';

@ProviderFor(FilteredBookmarks)
final filteredBookmarksProvider = FilteredBookmarksProvider._();

final class FilteredBookmarksProvider
    extends $NotifierProvider<FilteredBookmarks, FilteredBookmarksModel> {
  FilteredBookmarksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'filteredBookmarksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filteredBookmarksHash();

  @$internal
  @override
  FilteredBookmarks create() => FilteredBookmarks();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FilteredBookmarksModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FilteredBookmarksModel>(value),
    );
  }
}

String _$filteredBookmarksHash() => r'e47a1ac5ad729964bfa424ef6cc9c685236c2e58';

abstract class _$FilteredBookmarks extends $Notifier<FilteredBookmarksModel> {
  FilteredBookmarksModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<FilteredBookmarksModel, FilteredBookmarksModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<FilteredBookmarksModel, FilteredBookmarksModel>,
        FilteredBookmarksModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
