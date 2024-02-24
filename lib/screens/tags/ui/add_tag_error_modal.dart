import 'package:flutter/material.dart';
import 'package:linkdy/i18n/strings.g.dart';

class AddTagErrorModal extends StatelessWidget {
  const AddTagErrorModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(t.generic.error),
      content: Text(t.tags.createTag.errorCreatingTag),
      actions: [
        Row(
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
