import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:linkdy/services/api_client.dart';

DioException fakeError({
  required DioExceptionType type,
  Object? error,
  String? message,
}) {
  return DioException(
    requestOptions: RequestOptions(path: 'https://bookmarks.home.arpa/api/'),
    type: type,
    error: error,
    message: message,
  );
}

void main() {
  test('timeout maps to timeout message', () {
    final d = describeReachabilityFailure(
      fakeError(type: DioExceptionType.connectionTimeout, message: 'timeout'),
    );
    expect(d.toLowerCase(), contains('timed out'));
  });

  test('failed host lookup maps to DNS hint', () {
    final d = describeReachabilityFailure(
      fakeError(
        type: DioExceptionType.connectionError,
        error: const SocketException("Failed host lookup: 'bookmarks.home.arpa'"),
      ),
    );
    expect(d, contains('DNS'));
  });

  test('connection refused maps to refused hint', () {
    final d = describeReachabilityFailure(
      fakeError(
        type: DioExceptionType.connectionError,
        error: const SocketException('Connection refused, errno = 111'),
      ),
    );
    expect(d.toLowerCase(), contains('refused'));
  });

  test('handshake failure maps to TLS hint', () {
    final d = describeReachabilityFailure(
      fakeError(
        type: DioExceptionType.unknown,
        error: const HandshakeException('Handshake error in client'),
      ),
    );
    expect(d, contains('TLS'));
  });

  test('badCertificate maps to TLS hint', () {
    final d = describeReachabilityFailure(
      fakeError(type: DioExceptionType.badCertificate, message: 'cert expired'),
    );
    expect(d, contains('TLS'));
  });

  test('cleartext block maps to cleartext hint', () {
    final d = describeReachabilityFailure(
      fakeError(
        type: DioExceptionType.unknown,
        error: const HttpException('Cleartext HTTP traffic not permitted'),
      ),
    );
    expect(d.toLowerCase(), contains('cleartext'));
  });
}
