import 'package:dio/dio.dart';

import 'package:my_linkding/models/server_instance.dart';
import 'package:my_linkding/utils/http_request_client.dart';

final dio = Dio();

class ApiClient {
  final ServerInstance serverInstance;

  const ApiClient({
    required this.serverInstance,
  });

  Future<bool> checkConnectionInstance() async {
    final result = await HttpRequestClient.get(urlPath: "/bookmarks/?limit=1", server: serverInstance);
    return result.successful;
  }
}
