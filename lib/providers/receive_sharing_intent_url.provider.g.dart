// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_sharing_intent_url.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReceiveSharingIntentUrl)
final receiveSharingIntentUrlProvider = ReceiveSharingIntentUrlProvider._();

final class ReceiveSharingIntentUrlProvider
    extends $NotifierProvider<ReceiveSharingIntentUrl, String?> {
  ReceiveSharingIntentUrlProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'receiveSharingIntentUrlProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$receiveSharingIntentUrlHash();

  @$internal
  @override
  ReceiveSharingIntentUrl create() => ReceiveSharingIntentUrl();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$receiveSharingIntentUrlHash() =>
    r'fc62c4867e311b7d8d0573d263af2daaf784fb1f';

abstract class _$ReceiveSharingIntentUrl extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<String?, String?>, String?, Object?, Object?>;
    element.handleCreate(ref, build);
  }
}
