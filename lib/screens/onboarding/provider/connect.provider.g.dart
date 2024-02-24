// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToServerHash() => r'78c2abcf7949674db5961ef644275d27c73bb000';

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
String _$connectHash() => r'348a51c7ab10af474e09ec3ffdcedffa46156695';

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
