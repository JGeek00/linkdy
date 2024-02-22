import 'package:flutter/material.dart';
import 'package:my_linkding/helpers/wrapped_class.dart';

class ConnectModel {
  final bool isConnecting;
  final int method;
  final TextEditingController ipDomainController;
  final String? ipDomainError;
  final TextEditingController portController;
  final String? portError;
  final TextEditingController pathController;
  final String? pathError;
  final TextEditingController tokenController;
  final String? tokenError;
  final bool validValues;

  ConnectModel({
    required this.isConnecting,
    required this.method,
    required this.ipDomainController,
    required this.ipDomainError,
    required this.portController,
    required this.portError,
    required this.pathController,
    required this.pathError,
    required this.tokenController,
    required this.tokenError,
    required this.validValues,
  });

  ConnectModel copyWidth({
    bool? isConnecting,
    int? method,
    TextEditingController? ipDomainController,
    Wrapped<String?>? ipDomainError,
    TextEditingController? portController,
    Wrapped<String?>? portError,
    TextEditingController? pathController,
    Wrapped<String?>? pathError,
    TextEditingController? tokenController,
    Wrapped<String?>? tokenError,
    bool? validValues,
  }) =>
      ConnectModel(
        isConnecting: isConnecting ?? this.isConnecting,
        method: method ?? this.method,
        ipDomainController: ipDomainController ?? this.ipDomainController,
        ipDomainError: ipDomainError != null ? ipDomainError.value : this.ipDomainError,
        portController: portController ?? this.portController,
        portError: portError != null ? portError.value : this.portError,
        pathController: pathController ?? this.pathController,
        pathError: pathError != null ? pathError.value : this.pathError,
        tokenController: tokenController ?? this.tokenController,
        tokenError: tokenError != null ? tokenError.value : this.tokenError,
        validValues: validValues ?? this.validValues,
      );
}
