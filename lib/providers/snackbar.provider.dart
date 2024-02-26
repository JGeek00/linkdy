import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/constants/global_keys.dart';
import 'package:linkdy/models/providers_models/snackbar_status.model.dart';

part 'snackbar.provider.g.dart';

@Riverpod(keepAlive: true)
class Snackbar extends _$Snackbar {
  @override
  SnackbarStatusModel build() {
    return SnackbarStatusModel();
  }

  void showSnacbkar({
    required String label,
    required Color color,
    Color? labelColor,
    GlobalKey<ScaffoldMessengerState>? key,
  }) async {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey = key ?? scaffoldMessengerGlobalKey;
    if (state.visible == true) {
      scaffoldKey.currentState?.clearSnackBars();
      await Future.delayed(const Duration(milliseconds: 500));
    }
    state.visible = true;
    ref.notifyListeners();

    final snackBar = SnackBar(
      content: Text(
        label,
        style: TextStyle(color: labelColor ?? Colors.white),
      ),
      backgroundColor: color,
    );
    scaffoldKey.currentState?.showSnackBar(snackBar).closed.then((value) {
      state.visible = false;
      ref.notifyListeners();
    });
  }
}
