// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tagsRequest)
final tagsRequestProvider = TagsRequestProvider._();

final class TagsRequestProvider extends $FunctionalProvider<
        AsyncValue<ApiResponse<TagsResponse>>,
        ApiResponse<TagsResponse>,
        FutureOr<ApiResponse<TagsResponse>>>
    with
        $FutureModifier<ApiResponse<TagsResponse>>,
        $FutureProvider<ApiResponse<TagsResponse>> {
  TagsRequestProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tagsRequestProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tagsRequestHash();

  @$internal
  @override
  $FutureProviderElement<ApiResponse<TagsResponse>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ApiResponse<TagsResponse>> create(Ref ref) {
    return tagsRequest(ref);
  }
}

String _$tagsRequestHash() => r'c08b32ccbf24b546cdf26919944df0149701dec3';

@ProviderFor(Tags)
final tagsProvider = TagsProvider._();

final class TagsProvider extends $NotifierProvider<Tags, TagsModel> {
  TagsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tagsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tagsHash();

  @$internal
  @override
  Tags create() => Tags();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TagsModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TagsModel>(value),
    );
  }
}

String _$tagsHash() => r'6e26b566459377a3a6bc0f1884b9a05855151d3f';

abstract class _$Tags extends $Notifier<TagsModel> {
  TagsModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TagsModel, TagsModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<TagsModel, TagsModel>, TagsModel, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
