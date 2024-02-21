import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:my_linkding/models/app_status.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_status_provider.g.dart';

@Riverpod(keepAlive: true)
class AppStatusProvider extends _$AppStatusProvider {
  @override
  AppStatus build() {
    return AppStatus();
  }

  void setSharedPreferencesInstance(SharedPreferences instance) {
    state = state.copyWith(sharedPreferences: instance);
  }
}
