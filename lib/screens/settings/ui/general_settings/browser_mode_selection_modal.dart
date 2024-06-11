import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkdy/constants/enums.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/providers/app_status.provider.dart';

class BrowserModeSelectionModal extends ConsumerWidget {
  const BrowserModeSelectionModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 8),
                      child: Column(
                        children: [
                          Icon(
                            Icons.public_rounded,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 24,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            t.settings.generalSettings.openLinksWith,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RadioListTile(
                      value: OpenLinksBrowser.integrated,
                      groupValue: ref.watch(appStatusProvider).openLinksBrowser,
                      onChanged: ref.read(appStatusProvider.notifier).updateSelectedBrowser,
                      title: Text(t.settings.generalSettings.internalBrowser),
                    ),
                    RadioListTile(
                      value: OpenLinksBrowser.browserCustomTab,
                      groupValue: ref.watch(appStatusProvider).openLinksBrowser,
                      onChanged: ref.read(appStatusProvider.notifier).updateSelectedBrowser,
                      title: Text(t.settings.generalSettings.browserCustomTab),
                    ),
                    RadioListTile(
                      value: OpenLinksBrowser.systemBrowser,
                      groupValue: ref.watch(appStatusProvider).openLinksBrowser,
                      onChanged: ref.read(appStatusProvider.notifier).updateSelectedBrowser,
                      title: Text(t.settings.generalSettings.systemBrowser),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(t.generic.close),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
