import 'package:dio/dio.dart';
import 'package:my_linkding/providers/server_instances_provider.dart';
import 'package:my_linkding/services/api_client.dart';
import 'package:my_linkding/utils/api_base_url.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
class ApiClientProvider extends _$ApiClientProvider {
  @override
  ApiClient? build() {
    final savedInstances = ref.watch(serverInstancesProvider);
    if (savedInstances.isNotEmpty) {
      final instance = savedInstances[0];
      return ApiClient(
        serverInstance: instance,
        dioInstance: Dio(
          BaseOptions(
            baseUrl: apiBaseUrl(instance),
            headers: {
              "Authorization": "Token ${instance.token}",
            },
          ),
        ),
      );
    }
    return null;
  }

  void setApiClient(ApiClient client) {
    state = client;
  }

  void disconnectApiClient() {
    state = null;
    ref.read(serverInstancesProvider.notifier).removeServerInstances();
  }
}
