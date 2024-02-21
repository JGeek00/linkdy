import 'dart:convert';

import 'package:my_linkding/config/shared_preferences_keys.dart';
import 'package:my_linkding/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:my_linkding/services/api_client.dart';
import 'package:my_linkding/providers/api_client_provider.dart';
import 'package:my_linkding/models/server_instance.dart';

part 'server_instances_provider.g.dart';

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
}
