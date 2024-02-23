import 'package:flutter/material.dart';

import 'package:linkdy/i18n/strings.g.dart';

class ErrorSaveLink extends StatelessWidget {
  const ErrorSaveLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.generic.error),
      content: Text(t.links.addLink.errorSavingLink),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(t.generic.close),
            ),
          ],
        ),
      ],
    );
  }
}
