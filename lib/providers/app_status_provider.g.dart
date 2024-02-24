// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedThemeHash() => r'b820484a59ed72419c5b4cad0b894a030b54c702';

/// See also [selectedTheme].
@ProviderFor(selectedTheme)
final selectedThemeProvider = AutoDisposeProvider<ThemeMode>.internal(
  selectedTheme,
  name: r'selectedThemeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SelectedThemeRef = AutoDisposeProviderRef<ThemeMode>;
String _$appStatusHash() => r'3b87acee218adcc5707acfb30fd6e5c650b410ce';

/// See also [AppStatus].
@ProviderFor(AppStatus)
final appStatusProvider = NotifierProvider<AppStatus, AppStatusModel>.internal(
  AppStatus.new,
  name: r'appStatusProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppStatus = Notifier<AppStatusModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
