import 'package:flutter/material.dart';

class OnboardingModel {
  final PageController pageController;
  bool confirmServerRunning;

  OnboardingModel({
    required this.pageController,
    this.confirmServerRunning = false,
  });
}
