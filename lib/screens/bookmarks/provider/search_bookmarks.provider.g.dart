// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchSearchBookmarks)
final fetchSearchBookmarksProvider = FetchSearchBookmarksFamily._();

final class FetchSearchBookmarksProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  FetchSearchBookmarksProvider._(
      {required FetchSearchBookmarksFamily super.from,
      required int super.argument})
      : super(
          retry: null,
          name: r'fetchSearchBookmarksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchSearchBookmarksHash();

  @override
  String toString() {
    return r'fetchSearchBookmarksProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as int;
    return fetchSearchBookmarks(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSearchBookmarksProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchSearchBookmarksHash() =>
    r'c4afa5a0236ee9efcf528a6bf16436c97ec0a443';

final class FetchSearchBookmarksFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, int> {
  FetchSearchBookmarksFamily._()
      : super(
          retry: null,
          name: r'fetchSearchBookmarksProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FetchSearchBookmarksProvider call(
    int limit,
  ) =>
      FetchSearchBookmarksProvider._(argument: limit, from: this);

  @override
  String toString() => r'fetchSearchBookmarksProvider';
}

@ProviderFor(fetchSearchBookmarksLoadMore)
final fetchSearchBookmarksLoadMoreProvider =
    FetchSearchBookmarksLoadMoreProvider._();

final class FetchSearchBookmarksLoadMoreProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  FetchSearchBookmarksLoadMoreProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'fetchSearchBookmarksLoadMoreProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$fetchSearchBookmarksLoadMoreHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return fetchSearchBookmarksLoadMore(ref);
  }
}

String _$fetchSearchBookmarksLoadMoreHash() =>
    r'1049ac4fdb1598074bfe8066e33cd6e5f2cf4253';

@ProviderFor(SearchBookmarks)
final searchBookmarksProvider = SearchBookmarksProvider._();

final class SearchBookmarksProvider
    extends $NotifierProvider<SearchBookmarks, SearchBookmarksModel> {
  SearchBookmarksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'searchBookmarksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$searchBookmarksHash();

  @$internal
  @override
  SearchBookmarks create() => SearchBookmarks();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchBookmarksModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchBookmarksModel>(value),
    );
  }
}

String _$searchBookmarksHash() => r'0286b14260ba46ce615bdfa2f83fa14fa1637640';

abstract class _$SearchBookmarks extends $Notifier<SearchBookmarksModel> {
  SearchBookmarksModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SearchBookmarksModel, SearchBookmarksModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<SearchBookmarksModel, SearchBookmarksModel>,
        SearchBookmarksModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
