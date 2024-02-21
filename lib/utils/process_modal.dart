import 'package:flutter/material.dart';

import 'package:my_linkding/widgets/process_dialog.dart';

import 'package:my_linkding/router/routes.dart';

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
