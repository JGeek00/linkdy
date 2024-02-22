import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/onboarding/model/onboarding.model.dart';

part 'onboarding.provider.g.dart';

@riverpod
class Onboarding extends _$Onboarding {
  @override
  OnboardingModel build() {
    return OnboardingModel(
      pageController: PageController(),
      confirmServerRunning: false,
    );
  }

  void nextPage() {
    state.pageController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void previousPage() {
    state.pageController.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void confirmServerRunning() {
    state = state.toggleConfirmServerRunning(!state.confirmServerRunning);
  }
}
