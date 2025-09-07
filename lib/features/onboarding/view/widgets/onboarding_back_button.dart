import 'package:fitness_app/features/onboarding/assets/onboarding_images.dart';
import 'package:fitness_app/features/onboarding/controller/onboarding_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OnboardingBackButton extends StatelessWidget {
  const OnboardingBackButton({
    super.key,
    required OnboardingScreenController controller,
  }) : _controller = controller;

  final OnboardingScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: _controller.isNotFirstPage,
        child: Padding(
          padding: EdgeInsets.only(top: 84.h, left: 24.w),
          child: InkWell(
            onTap: _controller.previousPage,
            child: SvgPicture.asset(
              OnboardingImages.backButton,
            ),
          ),
        ),
      ),
    );
  }
}
