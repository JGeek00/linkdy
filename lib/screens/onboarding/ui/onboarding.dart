import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/onboarding/provider/onboarding.provider.dart';
import 'package:linkdy/screens/onboarding/ui/connect.dart';
import 'package:linkdy/screens/onboarding/ui/server_required.dart';
import 'package:linkdy/screens/onboarding/ui/welcome.dart';
import 'package:linkdy/widgets/system_overlay_style.dart';

import 'package:linkdy/constants/global_keys.dart';

class Onboarding extends ConsumerWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverlayStyle(
      child: ScaffoldMessenger(
        key: ScaffoldMessengerKeys.onboarding,
        child: Scaffold(
          body: SafeArea(
            child: PageView(
              controller: ref.watch(onboardingProvider).pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                OnboardingWelcome(),
                OnboardingServerRequired(),
                OnboardingConnect(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
