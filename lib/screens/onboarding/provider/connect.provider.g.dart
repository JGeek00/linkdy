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

String _$connectHash() => r'15405d136ca9517c557e6a3e021a882213ee3be2';

abstract class _$Connect extends $Notifier<ConnectModel> {
  ConnectModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ConnectModel, ConnectModel>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<ConnectModel, ConnectModel>,
        ConnectModel,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(connectToServer)
final connectToServerProvider = ConnectToServerProvider._();

final class ConnectToServerProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  ConnectToServerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'connectToServerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$connectToServerHash();

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    return connectToServer(ref);
  }
}

String _$connectToServerHash() => r'ad20ee1473dad2022c0871d85af4686398512554';
