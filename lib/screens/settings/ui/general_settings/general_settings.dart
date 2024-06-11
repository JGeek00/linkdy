import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkdy/constants/enums.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/screens/settings/ui/general_settings/browser_mode_selection_modal.dart';
import 'package:linkdy/screens/settings/ui/general_settings/disconnect_modal.dart';

import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/widgets/section_label.dart';

class GeneralSettings extends ConsumerWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void openBrowserSelectionSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => const BrowserModeSelectionModal(),
      );
    }

    String browserLabel() {
      switch (ref.watch(appStatusProvider).openLinksBrowser) {
        case OpenLinksBrowser.integrated:
          return t.settings.generalSettings.internalBrowser;
        case OpenLinksBrowser.browserCustomTab:
          return t.settings.generalSettings.browserCustomTab;
        case OpenLinksBrowser.systemBrowser:
          return t.settings.generalSettings.systemBrowser;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings.generalSettings.generalSettings),
      ),
      body: ListView(
        children: [
          SectionLabel(label: t.settings.generalSettings.bookmarks),
          SwitchListTile(
            title: Text(t.settings.generalSettings.showFavicon),
            subtitle: Text(t.settings.generalSettings.showFaviconDescription),
            value: ref.watch(appStatusProvider).showFavicon,
            onChanged: ref.read(appStatusProvider.notifier).setShowFavicon,
          ),
          ListTile(
            title: Text(t.settings.generalSettings.openLinksWith),
            subtitle: Text(browserLabel()),
            onTap: openBrowserSelectionSheet,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.icon(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => const DisconnectModal(),
                ),
                icon: const Icon(Icons.clear_rounded),
                label: Text(
                  t.settings.generalSettings.disconnectFromServer,
                ),
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
