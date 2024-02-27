// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToServerHash() => r'4c7d8eb1e2ed082e5ce2cde03f8afe343d7126b9';

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
String _$connectHash() => r'5382c9c95131bf263662799f30d2c131a548a8c5';

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
