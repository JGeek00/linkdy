import 'dart:convert';

import 'package:linkdy/constants/shared_preferences_keys.dart';
import 'package:linkdy/providers/shared_preferences.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/models/server_instance.dart';

part 'server_instances.provider.g.dart';

@Riverpod(keepAlive: true)
class ServerInstances extends _$ServerInstances {
  @override
  List<ServerInstance> build() {
    final instances = ref.watch(sharedPreferencesProvider).getStringList(SharedPreferencesKeys.serversInstances);

    if (instances == null) return [];

    List<ServerInstance> generatedInstances = [];
    for (final instance in instances) {
      try {
        generatedInstances.add(ServerInstance.fromJson(jsonDecode(instance)));
      } catch (_) {/* IF ERROR OMIT */}
    }

    return generatedInstances;
  }

  ServerInstance? getInstance(String id) {
    try {
      return state.firstWhere((instance) => instance.id == id);
    } catch (_) {
      return null;
    }
  }

  void saveNewInstance(ServerInstance instance) {
    state = [instance];
    saveServerInstances([instance]);
  }

  void saveServerInstances(List<ServerInstance> instances) async {
    final stringList = instances.map((i) => jsonEncode(i.toJson())).toList();
    ref.read(sharedPreferencesProvider).setStringList(SharedPreferencesKeys.serversInstances, stringList);
  }

  void removeServerInstances() {
    state = [];
    ref.read(sharedPreferencesProvider).remove(SharedPreferencesKeys.serversInstances);
  }
}
