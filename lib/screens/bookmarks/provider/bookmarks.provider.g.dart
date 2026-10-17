// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bookmarksRequest)
final bookmarksRequestProvider = BookmarksRequestFamily._();

final class BookmarksRequestProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  BookmarksRequestProvider._(
      {required BookmarksRequestFamily super.from,
      required (
        ReadStatus,
        SortingType,
        SortingWay,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'bookmarksRequestProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bookmarksRequestHash();

  @override
  String toString() {
    return r'bookmarksRequestProvider'
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
      ReadStatus,
      SortingType,
      SortingWay,
      int,
    );
    return bookmarksRequest(
      ref,
      argument.$1,
      argument.$2,
      argument.$3,
      argument.$4,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BookmarksRequestProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$bookmarksRequestHash() => r'1cce9f2f61420e584eb21daa210562ca4eee7859';

final class BookmarksRequestFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<void>,
            (
              ReadStatus,
              SortingType,
              SortingWay,
              int,
            )> {
  BookmarksRequestFamily._()
      : super(
          retry: null,
          name: r'bookmarksRequestProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  BookmarksRequestProvider call(
    ReadStatus readStatus,
    SortingType type,
    SortingWay way,
    int limit,
  ) =>
      BookmarksRequestProvider._(argument: (
        readStatus,
        type,
        way,
        limit,
      ), from: this);

  @override
  String toString() => r'bookmarksRequestProvider';
}

@ProviderFor(bookmarksRequestLoadMore)
final bookmarksRequestLoadMoreProvider = BookmarksRequestLoadMoreProvider._();

final class BookmarksRequestLoadMoreProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  BookmarksRequestLoadMoreProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'bookmarksRequestLoadMoreProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bookmarksRequestLoadMoreHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return bookmarksRequestLoadMore(ref);
  }
}

String _$bookmarksRequestLoadMoreHash() =>
    r'a5610ad197e54e2de7cc88c14ef3bd00dd774279';

@ProviderFor(Bookmarks)
final bookmarksProvider = BookmarksProvider._();

final class BookmarksProvider
    extends $NotifierProvider<Bookmarks, BookmarksModel> {
  BookmarksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'bookmarksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bookmarksHash();

  @$internal
  @override
  Bookmarks create() => Bookmarks();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookmarksModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookmarksModel>(value),
    );
  }
}

String _$bookmarksHash() => r'c362f70e3b876f658a05adf75530454893d89bf6';

abstract class _$Bookmarks extends $Notifier<BookmarksModel> {
  BookmarksModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BookmarksModel, BookmarksModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<BookmarksModel, BookmarksModel>,
        BookmarksModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
