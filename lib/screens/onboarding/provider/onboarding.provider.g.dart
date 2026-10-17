// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Onboarding)
final onboardingProvider = OnboardingProvider._();

final class OnboardingProvider
    extends $NotifierProvider<Onboarding, OnboardingModel> {
  OnboardingProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'onboardingProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$onboardingHash();

  @$internal
  @override
  Onboarding create() => Onboarding();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OnboardingModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OnboardingModel>(value),
    );
  }
}

String _$onboardingHash() => r'06f4c2d233d6babdd1d8fef05e5a6285e19ec453';

abstract class _$Onboarding extends $Notifier<OnboardingModel> {
  OnboardingModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<OnboardingModel, OnboardingModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<OnboardingModel, OnboardingModel>,
        OnboardingModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
