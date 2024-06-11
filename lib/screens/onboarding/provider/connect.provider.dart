import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/onboarding/model/connect.model.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/utils/snackbar.dart';
import 'package:linkdy/providers/dio_interceptor.provider.dart';
import 'package:linkdy/providers/server_instances.provider.dart';
import 'package:linkdy/utils/api_base_url.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/models/server_instance.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/services/api_client.dart';
import 'package:linkdy/constants/regexp.dart';

part 'connect.provider.g.dart';

const uuid = Uuid();

@riverpod
class Connect extends _$Connect {
  @override
  ConnectModel build() {
    return ConnectModel(
      isConnecting: false,
      method: 0,
      ipDomainController: TextEditingController(),
      ipDomainError: null,
      portController: TextEditingController(),
      portError: null,
      pathController: TextEditingController(),
      pathError: null,
      tokenController: TextEditingController(),
      tokenError: null,
      validValues: false,
    );
  }

  void setConnectionMethod(int method) {
    state.testConnection = null;
    state.method = method;
    ref.notifyListeners();
  }

  void validateIpDomain(String value) {
    state.testConnection = null;
    if (value != "") {
      state.ipDomainError = null;
    } else {
      state.ipDomainError = t.onboarding.invalidIpDomain;
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  void validatePort(String value) {
    state.testConnection = null;
    if (value != '') {
      if (int.tryParse(value) != null && int.parse(value) <= 65535) {
        state.portError = null;
      } else {
        state.portError = t.onboarding.invalidPort;
      }
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  void validatePath(String value) {
    state.testConnection = null;
    if (value == "") {
      state.pathError = null;
    } else {
      if (Regexps.path.hasMatch(value) == true) {
        state.pathError = null;
      } else {
        state.pathError = t.onboarding.invalidPath;
      }
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  void validateToken(String value) {
    state.testConnection = null;
    if (value != "") {
      state.tokenError = null;
    } else {
      state.tokenError = t.onboarding.tokenRequired;
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  bool validValues() {
    return state.tokenController.text != "" &&
        state.tokenError == null &&
        state.ipDomainController.text != "" &&
        state.ipDomainError == null &&
        state.pathError == null &&
        state.portError == null;
  }

  void testConnection() async {
    state.testConnection = LoadStatus.loading;
    ref.notifyListeners();

    final connectionString =
        "${ConnectionMethod.values[state.method].name}://${state.ipDomainController.text}${state.portController.text != '' ? ':${state.portController.text}' : ""}${state.pathController.text}";
    final result = await testServerReachability(connectionString);

    if (result == true) {
      state.testConnection = LoadStatus.loaded;
    } else {
      state.testConnection = LoadStatus.error;
    }
    ref.notifyListeners();
  }
}

@riverpod
FutureOr<bool> connectToServer(ConnectToServerRef ref) async {
  final serverInstance = ServerInstance(
    id: uuid.v4(),
    method: ConnectionMethod.values[ref.watch(connectProvider).method].name,
    ipDomain: ref.watch(connectProvider).ipDomainController.text,
    token: ref.watch(connectProvider).tokenController.text,
    path: ref.watch(connectProvider).pathController.text,
    port: int.tryParse(ref.watch(connectProvider).portController.text),
  );

  final apiClient = ApiClientService(
    serverInstance: serverInstance,
    dioInstance: Dio(
      BaseOptions(
        baseUrl: apiBaseUrl(serverInstance),
        headers: {
          "Authorization": "Token ${serverInstance.token}",
        },
      ),
    )..interceptors.add(ref.watch(dioInterceptorProvider)),
  );

  final processModal = ProcessModal();
  processModal.open(t.onboarding.connecting);

  final result = await apiClient.checkConnectionInstance();

  processModal.close();
  if (result == AuthResult.success) {
    ref.read(apiClientProvider.notifier).setApiClient(apiClient);
    ref.read(serverInstancesProvider.notifier).saveNewInstance(serverInstance);
  } else if (result == AuthResult.invalidToken) {
    showSnackbar(
      key: ScaffoldMessengerKeys.onboarding,
      label: t.onboarding.invalidToken,
      color: Colors.red,
    );
  } else {
    showSnackbar(
      key: ScaffoldMessengerKeys.onboarding,
      label: t.onboarding.cannotConnectToServer,
      color: Colors.red,
    );
  }

  return false;
}
