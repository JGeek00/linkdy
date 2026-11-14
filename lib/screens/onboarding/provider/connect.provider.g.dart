// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Connect)
final connectProvider = ConnectProvider._();

final class ConnectProvider extends $NotifierProvider<Connect, ConnectModel> {
  ConnectProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'connectProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$connectHash();

  @$internal
  @override
  Connect create() => Connect();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConnectModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConnectModel>(value),
    );
  }
}

String _$connectHash() => r'd023ea77ded4bc4fd0b361cbba3bc904ec99c470';

abstract class _$Connect extends $Notifier<ConnectModel> {
  ConnectModel build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ConnectModel, ConnectModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ConnectModel, ConnectModel>,
        ConnectModel,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
