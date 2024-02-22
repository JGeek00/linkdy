// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connect_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectToServerHash() => r'c40898fd5dd6dd7507140c7a69a6f336a56e30c0';

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
String _$connectHash() => r'bbdae015118381c538b7a3c15ca8345d30a28995';

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
