import 'package:fitness_app/features/onboarding/controller/onboarding_screen_controller.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';

class OnboardingPageBuilder extends StatelessWidget {
  const OnboardingPageBuilder({
    super.key,
    required OnboardingScreenController controller,
  }) : _controller = controller;

  final OnboardingScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller.pageController,
      itemCount: _controller.pages.length,
      onPageChanged: _controller.onPageChanged,
      itemBuilder: (context, index) {
        return OnboardingPage(model: _controller.pages[index]);
      },
    );
  }
}
