import 'package:flutter/material.dart';

class OnboardingModel {
  final PageController pageController;
  final bool confirmServerRunning;

  OnboardingModel({
    required this.pageController,
    required this.confirmServerRunning,
  });

  OnboardingModel toggleConfirmServerRunning(bool newValue) => OnboardingModel(
        pageController: pageController,
        confirmServerRunning: newValue,
      );
}
