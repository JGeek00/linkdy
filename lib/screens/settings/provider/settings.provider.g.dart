// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Settings)
final settingsProvider = SettingsProvider._();

final class SettingsProvider
    extends $NotifierProvider<Settings, SettingsModel> {
  SettingsProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'settingsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$settingsHash();

  @$internal
  @override
  Settings create() => Settings();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingsModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingsModel>(value),
    );
  }
}

String _$settingsHash() => r'709696bfa70c1fa702132beb428561e073c7a620';

abstract class _$Settings extends $Notifier<SettingsModel> {
  SettingsModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SettingsModel, SettingsModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<SettingsModel, SettingsModel>,
        SettingsModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
