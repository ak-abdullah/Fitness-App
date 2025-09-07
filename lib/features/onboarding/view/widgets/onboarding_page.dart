import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(model.image, fit: BoxFit.cover)),

        Align(
          alignment: Alignment.bottomCenter,

          child: Container(
            padding: EdgeInsets.only(bottom: 214.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.39, 1.0],
                colors: [
                  // Colors.red.withValues(alpha: 1),
                  // Colors.red.withValues(alpha: 1),
                  Color(0xFF000000).withValues(alpha: 0),
                  Color(0xFF000000).withValues(alpha: 1),
                  Color(0xFF000000).withValues(alpha: 1),
                ],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 36.w, right: 36.w),
                  child: Text(
                    model.title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(
                      color: AppTheme.textColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                Text(
                  model.description,
                  style: GoogleFonts.lora(
                    color: AppTheme.textColor,
                    fontSize: 16.sp,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
