import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/providers/snackbar.provider.dart';

class SnackbarFloatingActionButton extends ConsumerWidget {
  final Widget child;
  final void Function() onPressed;

  const SnackbarFloatingActionButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedPositioned(
      bottom: ref.watch(snackbarProvider).visible == true ? 70 : 20,
      right: 20,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
