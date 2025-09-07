import 'package:fitness_app/core/themes.dart' show AppTheme;
import 'package:fitness_app/features/onboarding/assets/onboarding_images.dart';
import 'package:fitness_app/features/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreenController extends GetxController {
  RxInt currentPage = 0.obs;
  RxBool isOnboardingCompleted = false.obs;
  final PageController pageController = PageController();
  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: OnboardingImages.onboarding1,
      title: 'Get Stronger for Preparation',
      description: 'Be an Inspiration',
    ),
    OnboardingModel(
      image: OnboardingImages.onboarding2,
      title: 'Build Your Mind and Body',
      description: 'Be an Inspiration',
    ),
    OnboardingModel(
      image: OnboardingImages.onboarding3,
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
    } else {
      isOnboardingCompleted.value = true;
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
  Color get buttonTextColor =>
      isLastPage ? AppTheme.textColor : AppTheme.buttonColor;

  BorderSide get buttonBorderSide => isLastPage
      ? BorderSide.none
      : BorderSide(color: AppTheme.buttonColor, width: 2);

  Color get buttonBackgroundColor =>
      isLastPage ? AppTheme.buttonColor : AppTheme.buttonBackgroundColor;
  BoxBorder? dotsBorder(int index) => currentPage.value != index
      ? Border.all(color: Color(0xFF000000), width: 1)
      : null;
  Color dotsColor(int index) => currentPage.value == index
      ? Color(0xFFFFFFFF)
      : Color(0xFFFFFFFF).withValues(alpha: 0.13);
      
}
