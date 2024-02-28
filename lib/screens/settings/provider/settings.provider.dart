import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/settings/model/settings.model.dart';

part 'settings.provider.g.dart';

@riverpod
class Settings extends _$Settings {
  @override
  SettingsModel build() {
    return SettingsModel();
  }

  void setSelectedScreen(int screen) {
    state.selectedScreen = screen;
    ref.notifyListeners();
  }
}
