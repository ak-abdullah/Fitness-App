import 'package:fitness_app/core/themes.dart' show AppTheme;
import 'package:fitness_app/features/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController {
  RxInt currentPage = 0.obs;

  final PageController pageController = PageController();
  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: 'assets/images/onboarding_1.png',
      title: 'Get Stronger for Preparation',
      description: 'Be an Inspiration',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_2.png',
      title: 'Build Your Mind and Body',
      description: 'Be an Inspiration',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding_3.png',
      title: 'Running to Your Dream',
      description: 'Be an Inspiration',
    ),
  ];

  void nextPage() {
    if (currentPage.value < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  bool get isLastPage => currentPage.value == pages.length - 1;
  bool get isNotFirstPage => currentPage.value != 0;
  String get buttonText => isLastPage ? 'Get Started' : 'Next';
  BorderSide get buttonBorderSide => isLastPage
      ? BorderSide.none
      : BorderSide(color: AppTheme.buttonColor, width: 2);

  Color get buttonBackgroundColor =>
      isLastPage ? AppTheme.buttonColor : AppTheme.buttonBackgroundColor;
}
