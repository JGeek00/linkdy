import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_linkding/screens/onboarding/provider/onboarding.provider.dart';
import 'package:my_linkding/screens/onboarding/ui/sliver_top_bar.dart';

import 'package:my_linkding/constants/urls.dart';
import 'package:my_linkding/i18n/strings.g.dart';
import 'package:my_linkding/utils/open_url.dart';

class OnboardingServerRequired extends ConsumerWidget {
  const OnboardingServerRequired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: OnboardingSliverTopBar(
                    icon: Icons.dns_rounded,
                    title: t.onboarding.serverRequired,
                  ),
                ),
                SliverList.list(
                  children: [
                    Text(
                      t.onboarding.serverRequiredDescription,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      child: InkWell(
                        onTap: () => openUrl(Urls.linkdingInstallationInstructions),
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/resources/github.svg',
                                color: Theme.of(context).colorScheme.primary,
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(width: 24),
                              Flexible(
                                child: Text(
                                  t.onboarding.installationInstructions,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: ref.watch(onboardingProvider).confirmServerRunning,
                        onChanged: (_) => ref.read(onboardingProvider.notifier).confirmServerRunning(),
                      ),
                      title: Text(
                        t.onboarding.serverRunningConfirmation,
                        style: const TextStyle(fontSize: 14),
                      ),
                      onTap: () => ref.read(onboardingProvider.notifier).confirmServerRunning(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FilledButton(
                onPressed: () => ref.read(onboardingProvider.notifier).previousPage(),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back_rounded),
                    const SizedBox(width: 8),
                    Text(t.onboarding.previous),
                  ],
                ),
              ),
              FilledButton(
                onPressed: ref.watch(onboardingProvider).confirmServerRunning == true
                    ? () => ref.read(onboardingProvider.notifier).nextPage()
                    : null,
                child: Row(
                  children: [
                    Text(t.onboarding.next),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward_rounded),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
