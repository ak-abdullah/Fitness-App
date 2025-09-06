import 'package:fitness_app/features/onboarding/controller/onboarding_screen_controller.dart';
import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/onboarding/models/onboarding_model.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_page.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_action_card.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_back_button.dart';
import 'package:fitness_app/features/onboarding/view/widgets/onboarding_page_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  final OnboardingScreenController _controller = OnboardingScreenController();
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


