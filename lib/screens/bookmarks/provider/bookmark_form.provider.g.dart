// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_form.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(checkBookmark)
final checkBookmarkProvider = CheckBookmarkFamily._();

final class CheckBookmarkProvider extends $FunctionalProvider<
        AsyncValue<ApiResponse<CheckBookmark>>,
        ApiResponse<CheckBookmark>,
        FutureOr<ApiResponse<CheckBookmark>>>
    with
        $FutureModifier<ApiResponse<CheckBookmark>>,
        $FutureProvider<ApiResponse<CheckBookmark>> {
  CheckBookmarkProvider._(
      {required CheckBookmarkFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'checkBookmarkProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$checkBookmarkHash();

  @override
  String toString() {
    return r'checkBookmarkProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ApiResponse<CheckBookmark>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ApiResponse<CheckBookmark>> create(Ref ref) {
    final argument = this.argument as String;
    return checkBookmark(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CheckBookmarkProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$checkBookmarkHash() => r'281900ac0b5b1efa4685c834730b6fcc022a804d';

final class CheckBookmarkFamily extends $Family
    with
        $FunctionalFamilyOverride<FutureOr<ApiResponse<CheckBookmark>>,
            String> {
  CheckBookmarkFamily._()
      : super(
          retry: null,
          name: r'checkBookmarkProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  CheckBookmarkProvider call(
    String url,
  ) =>
      CheckBookmarkProvider._(argument: url, from: this);

  @override
  String toString() => r'checkBookmarkProvider';
}

@ProviderFor(getTags)
final getTagsProvider = GetTagsProvider._();

final class GetTagsProvider extends $FunctionalProvider<
        AsyncValue<ApiResponse<TagsResponse>>,
        ApiResponse<TagsResponse>,
        FutureOr<ApiResponse<TagsResponse>>>
    with
        $FutureModifier<ApiResponse<TagsResponse>>,
        $FutureProvider<ApiResponse<TagsResponse>> {
  GetTagsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getTagsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getTagsHash();

  @$internal
  @override
  $FutureProviderElement<ApiResponse<TagsResponse>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ApiResponse<TagsResponse>> create(Ref ref) {
    return getTags(ref);
  }
}

String _$getTagsHash() => r'75a32678caee1723763880ff54beed32fc524974';

@ProviderFor(BookmarkForm)
final bookmarkFormProvider = BookmarkFormProvider._();

final class BookmarkFormProvider
    extends $NotifierProvider<BookmarkForm, BookmarkFormModel> {
  BookmarkFormProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'bookmarkFormProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$bookmarkFormHash();

  @$internal
  @override
  BookmarkForm create() => BookmarkForm();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookmarkFormModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookmarkFormModel>(value),
    );
  }
}

String _$bookmarkFormHash() => r'de126e03d6761b90240fa27e69c9d0e7f92868fc';

abstract class _$BookmarkForm extends $Notifier<BookmarkFormModel> {
  BookmarkFormModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BookmarkFormModel, BookmarkFormModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<BookmarkFormModel, BookmarkFormModel>,
        BookmarkFormModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
