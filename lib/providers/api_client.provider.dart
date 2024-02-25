import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/providers/server_instances.provider.dart';
import 'package:linkdy/providers/dio_interceptor.provider.dart';
import 'package:linkdy/services/api_client.dart';
import 'package:linkdy/utils/api_base_url.dart';

part 'api_client.provider.g.dart';

@Riverpod(keepAlive: true)
class ApiClient extends _$ApiClient {
  @override
  ApiClientService? build() {
    final savedInstances = ref.watch(serverInstancesProvider);
    if (savedInstances.isNotEmpty) {
      final instance = savedInstances[0];
      final dio = Dio(
        BaseOptions(
          baseUrl: apiBaseUrl(instance),
          headers: {
            "Authorization": "Token ${instance.token}",
          },
        ),
      )..interceptors.add(ref.watch(dioInterceptorProvider));
      return ApiClientService(
        serverInstance: instance,
        dioInstance: dio,
      );
    }
    return null;
  }

  void setApiClient(ApiClientService client) {
    state = client;
  }

  void disconnectApiClient() {
    state = null;
    ref.read(serverInstancesProvider.notifier).removeServerInstances();
  }
}
