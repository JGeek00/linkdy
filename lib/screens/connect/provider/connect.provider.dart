import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:my_linkding/screens/connect/model/connect.model.dart';

import 'package:my_linkding/providers/server_instances_provider.dart';
import 'package:my_linkding/i18n/strings.g.dart';
import 'package:my_linkding/constants/enums.dart';
import 'package:my_linkding/utils/process_modal.dart';
import 'package:my_linkding/utils/snackbar.dart';
import 'package:my_linkding/models/server_instance.dart';
import 'package:my_linkding/providers/api_client_provider.dart';
import 'package:my_linkding/services/api_client.dart';
import 'package:my_linkding/constants/regexp.dart';
import 'package:my_linkding/helpers/wrapped_class.dart';

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
    );
  }

  void setConnectionMethod(int method) {
    state = state.copyWidth(method: method);
  }

  void validateIpDomain(String value) {
    if (Regexps.ipAddress.hasMatch(value) || Regexps.domain.hasMatch(value)) {
      state = state.copyWidth(ipDomainError: const Wrapped.value(null));
    } else {
      state = state.copyWidth(ipDomainError: const Wrapped.value("Error"));
    }
  }

  void validatePort(value) {
    if (value != null && value != '') {
      if (int.tryParse(value) != null && int.parse(value) <= 65535) {
        state = state.copyWidth(portError: const Wrapped.value(null));
      } else {
        state = state.copyWidth(portError: const Wrapped.value("Invalid port"));
      }
    }
  }

  void validateToken(String value) {
    if (value != "") {
      state = state.copyWidth(tokenError: const Wrapped.value(null));
    } else {
      state = state.copyWidth(tokenError: const Wrapped.value("Error"));
    }
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

  final apiClient = ApiClient(serverInstance: serverInstance);

  final processModal = ProcessModal();
  processModal.open(t.connect.connecting);

  final result = await apiClient.checkConnectionInstance();

  processModal.close();
  if (result == true) {
    ref.read(apiClientProviderProvider.notifier).setApiClient(apiClient);
    ref.read(serverInstancesProvider.notifier).saveNewInstance(serverInstance);
    // ref.watch(routerProvider).replace(RoutesPaths.links);
  } else {
    showSnacbkar(label: t.connect.cannotConnectToServer, color: Colors.red);
  }

  return false;
}
