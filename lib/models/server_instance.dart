class ServerInstance {
  final String id;
  final String method;
  final String ipDomain;
  final int? port;
  final String? path;
  final String token;

  const ServerInstance({
    required this.id,
    required this.method,
    required this.ipDomain,
    this.port,
    this.path,
    required this.token,
  });

  factory ServerInstance.fromJson(Map<String, dynamic> data) => ServerInstance(
        id: data['id'],
        method: data['method'],
        ipDomain: data['ipDomain'],
        port: data['port'],
        path: data['path'],
        token: data['token'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "method": method,
        "ipDomain": ipDomain,
        "port": port,
        "path": path,
        "token": token,
      };
}
