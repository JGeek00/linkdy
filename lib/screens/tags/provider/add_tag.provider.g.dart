// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_tag.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddTag)
final addTagProvider = AddTagProvider._();

final class AddTagProvider extends $NotifierProvider<AddTag, AddTagModel> {
  AddTagProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'addTagProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$addTagHash();

  @$internal
  @override
  AddTag create() => AddTag();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddTagModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddTagModel>(value),
    );
  }
}

String _$addTagHash() => r'8157bc7911ae64627adabbe1528f519a4b1cb913';

abstract class _$AddTag extends $Notifier<AddTagModel> {
  AddTagModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddTagModel, AddTagModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AddTagModel, AddTagModel>, AddTagModel, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
