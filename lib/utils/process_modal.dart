import 'package:flutter/material.dart';

import 'package:linkdy/widgets/process_dialog.dart';

import 'package:linkdy/router/routes.dart';

class ProcessModal {
  void open(String message) async {
    await Future.delayed(
      const Duration(seconds: 0),
      () => {
        showDialog(
          context: rootNavigatorKey.currentContext!,
          builder: (ctx) {
            return ProcessDialog(
              message: message,
            );
          },
          barrierDismissible: false,
          useSafeArea: true,
        ),
      },
    );
  }

  void close() {
    Navigator.pop(rootNavigatorKey.currentContext!);
  }
}
