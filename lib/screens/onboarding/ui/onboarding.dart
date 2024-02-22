import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:my_linkding/screens/onboarding/provider/onboarding.provider.dart';
import 'package:my_linkding/screens/onboarding/ui/connect.dart';
import 'package:my_linkding/screens/onboarding/ui/server_required.dart';
import 'package:my_linkding/screens/onboarding/ui/welcome.dart';
import 'package:my_linkding/widgets/system_overlay_style.dart';

class Onboarding extends ConsumerWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverlayStyle(
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
    );
  }
}
