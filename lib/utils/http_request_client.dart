import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:my_linkding/models/server_instance.dart';

enum ExceptionType { socket, timeout, handshake, http, unknown }

class HttpResponse {
  final bool successful;
  final String? body;
  final int? statusCode;
  final ExceptionType? exception;

  const HttpResponse({
    required this.successful,
    required this.body,
    required this.statusCode,
    this.exception,
  });
}

String getConnectionString({
  required ServerInstance server,
  required String urlPath,
}) {
  return "${server.method}://${server.ipDomain}${server.port != null ? ':${server.port}' : ""}${server.path ?? ""}/api$urlPath";
}

class HttpRequestClient {
  static Future<HttpResponse> get({
    required String urlPath,
    required ServerInstance server,
    int timeout = 10,
  }) async {
    final String connectionString = getConnectionString(server: server, urlPath: urlPath);
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.getUrl(Uri.parse(connectionString));
      request.headers.set('Authorization', 'Token ${server.token}');
      HttpClientResponse response = await request.close().timeout(
            Duration(seconds: timeout),
          );
      String reply = await response.transform(utf8.decoder).join();
      httpClient.close();
      return HttpResponse(
        successful: response.statusCode >= 400 ? false : true,
        body: reply,
        statusCode: response.statusCode,
      );
    } on SocketException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.socket,
      );
    } on TimeoutException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.timeout,
      );
    } on HandshakeException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.handshake,
      );
    } on HttpException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.http,
      );
    } catch (e) {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.unknown,
      );
    }
  }

  static Future<HttpResponse> post({
    required String urlPath,
    required ServerInstance server,
    dynamic body,
    int timeout = 10,
  }) async {
    final String connectionString = getConnectionString(server: server, urlPath: urlPath);
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.postUrl(Uri.parse(connectionString));
      request.headers.set('Authorization', 'Token ${server.token}');
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(body)));
      HttpClientResponse response = await request.close().timeout(
            Duration(seconds: timeout),
          );
      String reply = await response.transform(utf8.decoder).join();
      httpClient.close();
      return HttpResponse(
        successful: response.statusCode >= 400 ? false : true,
        body: reply,
        statusCode: response.statusCode,
      );
    } on SocketException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.socket,
      );
    } on TimeoutException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.timeout,
      );
    } on HttpException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.http,
      );
    } on HandshakeException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.handshake,
      );
    } catch (e) {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.unknown,
      );
    }
  }

  static Future<HttpResponse> put({
    required String urlPath,
    required ServerInstance server,
    dynamic body,
    int timeout = 10,
  }) async {
    final String connectionString = getConnectionString(server: server, urlPath: urlPath);
    try {
      HttpClient httpClient = HttpClient();
      HttpClientRequest request = await httpClient.putUrl(Uri.parse(connectionString));
      request.headers.set('Authorization', 'Token ${server.token}');
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(body)));
      HttpClientResponse response = await request.close().timeout(
            Duration(seconds: timeout),
          );
      String reply = await response.transform(utf8.decoder).join();
      httpClient.close();
      return HttpResponse(
        successful: response.statusCode >= 400 ? false : true,
        body: reply,
        statusCode: response.statusCode,
      );
    } on SocketException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.socket,
      );
    } on TimeoutException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.timeout,
      );
    } on HttpException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.http,
      );
    } on HandshakeException {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.handshake,
      );
    } catch (e) {
      return const HttpResponse(
        successful: false,
        body: null,
        statusCode: null,
        exception: ExceptionType.unknown,
      );
    }
  }
}
