import 'package:flutter/material.dart';

class ConnectModel {
  bool isConnecting;
  int method;
  final TextEditingController ipDomainController;
  String? ipDomainError;
  final TextEditingController portController;
  String? portError;
  final TextEditingController pathController;
  String? pathError;
  final TextEditingController tokenController;
  String? tokenError;
  bool validValues;

  ConnectModel({
    this.isConnecting = false,
    this.method = 0,
    required this.ipDomainController,
    this.ipDomainError,
    required this.portController,
    this.portError,
    required this.pathController,
    this.pathError,
    required this.tokenController,
    this.tokenError,
    this.validValues = true,
  });
}
