import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/api_client_provider.dart';

class Settings extends ConsumerWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.settings),
      ),
      body: ListView(
        children: [
          FilledButton.icon(
            onPressed: () => ref.read(apiClientProviderProvider.notifier).disconnectApiClient(),
            icon: const Icon(Icons.clear_rounded),
            label: Text(
              t.settings.disconnectFromServer,
            ),
          ),
        ],
      ),
    );
  }
}
