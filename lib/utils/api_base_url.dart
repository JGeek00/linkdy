import 'package:linkdy/models/server_instance.dart';

String apiBaseUrl(ServerInstance server) {
  return "${server.method}://${server.ipDomain}${server.port != null ? ':${server.port}' : ""}${server.path ?? ""}/api";
}
