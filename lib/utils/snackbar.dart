import 'package:flutter/material.dart';

void showSnackbar({
  required GlobalKey<ScaffoldMessengerState> key,
  required String label,
  required Color color,
  Color? labelColor,
}) {
  final snackBar = SnackBar(
    content: Text(
      label,
      style: TextStyle(color: labelColor ?? Colors.white),
    ),
    backgroundColor: color,
  );
  key.currentState?.showSnackBar(snackBar);
}
