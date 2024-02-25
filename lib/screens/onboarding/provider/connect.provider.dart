import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/onboarding/model/connect.model.dart';

import 'package:linkdy/providers/dio_interceptor.provider.dart';
import 'package:linkdy/providers/server_instances.provider.dart';
import 'package:linkdy/utils/api_base_url.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/utils/snackbar.dart';
import 'package:linkdy/models/server_instance.dart';
import 'package:linkdy/providers/api_client.provider.dart';
import 'package:linkdy/services/api_client.dart';
import 'package:linkdy/constants/regexp.dart';

part 'connect.provider.g.dart';

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
    state.method = method;
    ref.notifyListeners();
  }

  void validateIpDomain(String value) {
    if (Regexps.ipAddress.hasMatch(value) || Regexps.domain.hasMatch(value)) {
      state.ipDomainError = null;
    } else {
      state.ipDomainError = t.onboarding.invalidIpDomain;
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  void validatePort(value) {
    if (value != null && value != '') {
      if (int.tryParse(value) != null && int.parse(value) <= 65535) {
        state.portError = null;
      } else {
        state.portError = t.onboarding.invalidPort;
      }
    }
    state.validValues = validValues();
    ref.notifyListeners();
  }

  void validateToken(String value) {
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
        state.ipDomainError == null;
  }
}

@riverpod
FutureOr<bool> connectToServer(ConnectToServerRef ref) async {
  const uuid = Uuid();

  final serverInstance = ServerInstance(
    id: uuid.v4(),
    method: ConnectionMethod.values[ref.watch(connectProvider).method].name,
    ipDomain: ref.watch(connectProvider).ipDomainController.text,
    token: ref.watch(connectProvider).tokenController.text,
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
    showSnacbkar(label: t.onboarding.invalidToken, color: Colors.red);
  } else {
    showSnacbkar(label: t.onboarding.cannotConnectToServer, color: Colors.red);
  }

  return false;
}
