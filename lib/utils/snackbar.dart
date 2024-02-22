// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:linkdy/constants/global_keys.dart';

void showSnacbkar({
  required String label,
  required Color color,
  Color? labelColor,
  GlobalKey<ScaffoldMessengerState>? key,
}) async {
  final GlobalKey<ScaffoldMessengerState> scaffoldKey = key ?? scaffoldMessengerGlobalKey;

  final snackBar = SnackBar(
    content: Text(
      label,
      style: TextStyle(color: labelColor ?? Colors.white),
    ),
    backgroundColor: color,
  );
  scaffoldKey.currentState?.showSnackBar(snackBar);
}
