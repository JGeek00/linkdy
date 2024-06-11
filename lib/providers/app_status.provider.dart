import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';
import 'package:linkdy/constants/shared_preferences_keys.dart';
import 'package:linkdy/providers/shared_preferences.provider.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/providers_models/app_status.model.dart';

part 'app_status.provider.g.dart';

@Riverpod(keepAlive: true)
class AppStatus extends _$AppStatus {
  @override
  AppStatusModel build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    return AppStatusModel(
      selectedColor: sharedPreferences.getInt(SharedPreferencesKeys.selectedColor) ?? 0,
      selectedTheme: SelectedTheme.values[sharedPreferences.getInt(SharedPreferencesKeys.selectedTheme) ?? 0],
      useDynamicTheme: sharedPreferences.getBool(SharedPreferencesKeys.useDynamicTheme) ?? true,
      openLinksBrowser:
          OpenLinksBrowserExtension.fromString(sharedPreferences.getString(SharedPreferencesKeys.openLinksBrowser)) ??
              OpenLinksBrowser.integrated,
      showFavicon: sharedPreferences.getBool(SharedPreferencesKeys.showFavicon) ?? true,
    );
  }

  void setTheme(SelectedTheme theme) {
    state.selectedTheme = theme;
    ref.read(sharedPreferencesProvider).setInt(SharedPreferencesKeys.selectedTheme, theme.index);
    ref.notifyListeners();
  }

  void setSupportsDynamicTheme(bool value) {
    state.supportsDynamicTheme = value;
  }

  void setUseDynamicTheme(bool value) {
    state.useDynamicTheme = value;
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKeys.useDynamicTheme, value);
    ref.notifyListeners();
  }

  void setSelectedColor(int value) {
    state.selectedColor = value;
    ref.read(sharedPreferencesProvider).setInt(SharedPreferencesKeys.selectedColor, value);
    ref.notifyListeners();
  }

  void updateSelectedBrowser(OpenLinksBrowser? value) {
    if (value == null) return;
    state.openLinksBrowser = value;
    ref.read(sharedPreferencesProvider).setString(SharedPreferencesKeys.openLinksBrowser, value.toString());
    ref.notifyListeners();
  }

  void setShowFavicon(bool value) {
    state.showFavicon = value;
    ref.read(sharedPreferencesProvider).setBool(SharedPreferencesKeys.showFavicon, value);
    ref.read(faviconStoreProvider.notifier).clearFavicons();
    ref.notifyListeners();
  }
}

@riverpod
ThemeMode selectedTheme(SelectedThemeRef ref) {
  switch (ref.watch(appStatusProvider).selectedTheme) {
    case SelectedTheme.system:
      return SchedulerBinding.instance.window.platformBrightness == Brightness.light ? ThemeMode.light : ThemeMode.dark;

    case SelectedTheme.light:
      return ThemeMode.light;

    case SelectedTheme.dark:
      return ThemeMode.dark;

    default:
      return ThemeMode.light;
  }
}
