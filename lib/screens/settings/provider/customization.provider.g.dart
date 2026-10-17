// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customization.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Customization)
final customizationProvider = CustomizationProvider._();

final class CustomizationProvider
    extends $NotifierProvider<Customization, CustomizationModel> {
  CustomizationProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'customizationProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$customizationHash();

  @$internal
  @override
  Customization create() => Customization();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CustomizationModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CustomizationModel>(value),
    );
  }
}

String _$customizationHash() => r'c4cf4b566abbe697ec14c5024e1576f230d3e9fb';

abstract class _$Customization extends $Notifier<CustomizationModel> {
  CustomizationModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CustomizationModel, CustomizationModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<CustomizationModel, CustomizationModel>,
        CustomizationModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
