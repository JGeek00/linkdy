import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyToClipboard({
  required GlobalKey<ScaffoldMessengerState> key,
  required String value,
  required String successMessage,
}) async {
  await Clipboard.setData(
    ClipboardData(text: value),
  );
  key.currentState!.showSnackBar(
    SnackBar(
      content: Text(successMessage),
      backgroundColor: Colors.green,
    ),
  );
}
