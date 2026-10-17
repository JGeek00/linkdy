// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ApiClient)
final apiClientProvider = ApiClientProvider._();

final class ApiClientProvider
    extends $NotifierProvider<ApiClient, ApiClientService?> {
  ApiClientProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'apiClientProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$apiClientHash();

  @$internal
  @override
  ApiClient create() => ApiClient();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ApiClientService? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ApiClientService?>(value),
    );
  }
}

String _$apiClientHash() => r'81e911e24bda3baf158a7d583271c4467821b11f';

abstract class _$ApiClient extends $Notifier<ApiClientService?> {
  ApiClientService? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ApiClientService?, ApiClientService?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ApiClientService?, ApiClientService?>,
        ApiClientService?,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
