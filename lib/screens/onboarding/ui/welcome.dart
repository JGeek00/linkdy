import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_linkding/i18n/strings.g.dart';
import 'package:my_linkding/screens/onboarding/provider/onboarding.provider.dart';

class OnboardingWelcome extends ConsumerWidget {
  const OnboardingWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final iconSize = width > height ? height : width;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    t.onboarding.title,
                    style: const TextStyle(fontSize: 28),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    t.onboarding.subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  FilledButton(
                    onPressed: () => ref.read(onboardingProvider.notifier).nextPage(),
                    child: Row(
                      children: [
                        Text(t.onboarding.start),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Transform.rotate(
              angle: 0.7,
              child: Icon(
                Icons.link_rounded,
                size: iconSize - 48,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
