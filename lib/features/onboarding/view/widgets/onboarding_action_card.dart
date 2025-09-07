import 'package:fitness_app/features/onboarding/controller/onboarding_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingActionCard extends StatelessWidget {
  const OnboardingActionCard({
    super.key,
    required OnboardingScreenController controller,
  }) : _controller = controller;

  final OnboardingScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Wrap(
              spacing: 6.w,

              children: List.generate(
                _controller.pages.length,
                (index) => Container(
                  decoration: BoxDecoration(
                    border: _controller.dotsBorder(index),
                    color: _controller.dotsColor(index),

                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: SizedBox(height: 6.h, width: 17.w),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              left: 45.w,
              right: 45.w,
              bottom: 92.h,
              top: 43.h,
            ),
            child: SizedBox(
              height: 49,
              width: double.infinity,
              child: Obx(() {
                if (_controller.isOnboardingCompleted.value) {
                  
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    context.go('/signup');
                  });
                }
                return OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: _controller.buttonBackgroundColor,
                    side: _controller.buttonBorderSide,
                  ),
                  onPressed: _controller.nextPage,
                  child: Text(
                    _controller.buttonText,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                      color: _controller.buttonTextColor,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
