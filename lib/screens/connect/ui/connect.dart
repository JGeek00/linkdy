import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_linkding/constants/enums.dart';

import 'package:my_linkding/screens/connect/provider/connect_provider.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

class Connect extends ConsumerWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(connectProvider);

    final validValies = ref.read(connectProvider.notifier).validValues();

    final connectionMethod = ConnectionMethod.values[provider.method];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Theme.of(context).colorScheme.primary),
                ),
                child: Text(
                  "${connectionMethod.name}://${provider.ipDomainController.text}${provider.pathController.text != '' ? ':${provider.portController.text}' : ""}${provider.pathController.text}",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 30),
              SegmentedButtonSlide(
                entries: const [
                  SegmentedButtonSlideEntry(label: "HTTP"),
                  SegmentedButtonSlideEntry(label: "HTTPS"),
                ],
                selectedEntry: provider.method,
                onChange: ref.read(connectProvider.notifier).setConnectionMethod,
                colors: SegmentedButtonSlideColors(
                  barColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  backgroundSelectedColor: Theme.of(context).colorScheme.primary,
                  foregroundSelectedColor: Theme.of(context).colorScheme.onPrimary,
                  foregroundUnselectedColor: Theme.of(context).colorScheme.onSurface,
                  hoverColor: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                textOverflow: TextOverflow.ellipsis,
                fontSize: 14,
                height: 40,
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: provider.ipDomainController,
                onChanged: ref.read(connectProvider.notifier).validateIpDomain,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.link_rounded),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  errorText: provider.ipDomainError,
                  labelText: "IP address or domain",
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: provider.portController,
                onChanged: ref.read(connectProvider.notifier).validatePort,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.link_rounded),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  errorText: provider.portError,
                  labelText: "Port",
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: provider.tokenController,
                onChanged: ref.read(connectProvider.notifier).validateToken,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key_rounded),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  errorText: provider.tokenError,
                  labelText: "Token",
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FilledButton.icon(
                    onPressed: validValies ? () => ref.read(connectToServerProvider) : null,
                    icon: const Icon(Icons.login_rounded),
                    label: Text("Connect"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
