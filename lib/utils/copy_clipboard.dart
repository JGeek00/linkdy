// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:linkdy/constants/global_keys.dart';

void copyToClipboard({
  required String value,
  required String successMessage,
}) async {
  if (scaffoldMessengerGlobalKey.currentState != null) {
    await Clipboard.setData(
      ClipboardData(text: value),
    );
    scaffoldMessengerGlobalKey.currentState!.showSnackBar(
      SnackBar(
        content: Text(successMessage),
        backgroundColor: Colors.green,
      ),
    );
  }
}
