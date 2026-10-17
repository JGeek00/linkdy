// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_instances.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ServerInstances)
final serverInstancesProvider = ServerInstancesProvider._();

final class ServerInstancesProvider
    extends $NotifierProvider<ServerInstances, List<ServerInstance>> {
  ServerInstancesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'serverInstancesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$serverInstancesHash();

  @$internal
  @override
  ServerInstances create() => ServerInstances();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<ServerInstance> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<ServerInstance>>(value),
    );
  }
}

String _$serverInstancesHash() => r'ee41f5a717b9f779aa4319cc711b479a47c1c9ef';

abstract class _$ServerInstances extends $Notifier<List<ServerInstance>> {
  List<ServerInstance> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<ServerInstance>, List<ServerInstance>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<List<ServerInstance>, List<ServerInstance>>,
        List<ServerInstance>,
        Object?,
        Object?>;
    element.handleCreate(ref, build);
  }
}
