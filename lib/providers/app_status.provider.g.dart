// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_status.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppStatus)
final appStatusProvider = AppStatusProvider._();

final class AppStatusProvider
    extends $NotifierProvider<AppStatus, AppStatusModel> {
  AppStatusProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'appStatusProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$appStatusHash();

  @$internal
  @override
  AppStatus create() => AppStatus();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppStatusModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppStatusModel>(value),
    );
  }
}

String _$appStatusHash() => r'399eafc0b828017889e7594ead4c6455168d3696';

abstract class _$AppStatus extends $Notifier<AppStatusModel> {
  AppStatusModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AppStatusModel, AppStatusModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AppStatusModel, AppStatusModel>,
        AppStatusModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(selectedTheme)
final selectedThemeProvider = SelectedThemeProvider._();

final class SelectedThemeProvider
    extends $FunctionalProvider<ThemeMode, ThemeMode, ThemeMode>
    with $Provider<ThemeMode> {
  SelectedThemeProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'selectedThemeProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$selectedThemeHash();

  @$internal
  @override
  $ProviderElement<ThemeMode> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeMode create(Ref ref) {
    return selectedTheme(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$selectedThemeHash() => r'be6aa273e37e95fb9ede5d7b3008b707557ca88b';
