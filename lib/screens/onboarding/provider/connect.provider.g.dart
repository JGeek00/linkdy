// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToServerHash() => r'370f2b67b9d20818d94e4d9b6ffb57c44aa18494';

/// See also [connectToServer].
@ProviderFor(connectToServer)
final connectToServerProvider = AutoDisposeFutureProvider<bool>.internal(
  connectToServer,
  name: r'connectToServerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectToServerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectToServerRef = AutoDisposeFutureProviderRef<bool>;
String _$connectHash() => r'576283d8c543cdb4b1ae22c99cc63a23e4ff2981';

/// See also [Connect].
@ProviderFor(Connect)
final connectProvider =
    AutoDisposeNotifierProvider<Connect, ConnectModel>.internal(
  Connect.new,
  name: r'connectProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$connectHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Connect = AutoDisposeNotifier<ConnectModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
