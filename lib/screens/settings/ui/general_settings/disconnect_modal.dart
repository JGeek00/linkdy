import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/api_client_provider.dart';

class DisconnectModal extends ConsumerWidget {
  const DisconnectModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(t.settings.generalSettings.disconnectModal.title),
      content: Text(t.settings.generalSettings.disconnectModal.description),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(t.generic.cancel),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                ref.read(apiClientProvider.notifier).disconnectApiClient();
              },
              child: Text(t.generic.confirm),
            ),
          ],
        ),
      ],
    );
  }
}
