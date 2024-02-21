import 'package:my_linkding/providers/server_instances_provider.dart';
import 'package:my_linkding/services/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
class ApiClientProvider extends _$ApiClientProvider {
  @override
  ApiClient? build() {
    final savedInstances = ref.watch(serverInstancesProvider);
    if (savedInstances.isNotEmpty) {
      return ApiClient(serverInstance: savedInstances[0]);
    }
    return null;
  }

  void setApiClient(ApiClient client) {
    state = client;
  }
}
