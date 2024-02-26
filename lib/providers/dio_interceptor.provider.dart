import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/providers/snackbar.provider.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/server_instances.provider.dart';
import 'package:linkdy/router/routes.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/providers/api_client.provider.dart';

part 'dio_interceptor.provider.g.dart';

@Riverpod(keepAlive: true)
InterceptorsWrapper dioInterceptor(DioInterceptorRef ref) {
  return InterceptorsWrapper(
    onError: (error, handler) async {
      if (error.response?.statusCode == 401) {
        while (GoRouter.of(rootNavigatorKey.currentContext!).canPop() == true) {
          GoRouter.of(rootNavigatorKey.currentContext!).pop();
        }
        GoRouter.of(rootNavigatorKey.currentContext!).pushReplacement(RoutesPaths.onboarding);
        ref.read(apiClientProvider.notifier).disconnectApiClient();
        ref.read(serverInstancesProvider.notifier).removeServerInstances();
        ref.read(snackbarProvider.notifier).showSnacbkar(label: t.generic.authTokenNotValid, color: Colors.red);
      }
      handler.next(error);
    },
  );
}
