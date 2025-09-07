import 'package:fitness_app/features/onboarding/controller/onboarding_screen_controller.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_action_card.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_back_button.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_page_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingScreenController _controller = Get.put(
    OnboardingScreenController(),
  );

  OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          OnboardingPageBuilder(controller: _controller),
          OnboardingBackButton(controller: _controller),
          OnboardingActionCard(controller: _controller),
        ],
      ),
    );
  }
}
