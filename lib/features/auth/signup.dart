import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/auth/auth_images.dart';
import 'package:fitness_app/features/widgets/auth_form.dart';
import 'package:fitness_app/features/widgets/custom_text_field.dart';
import 'package:fitness_app/features/widgets/decorated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppTheme.appBackgroundColor,
      body: Stack(
        children: [
          DecoratedBackground(),
          AuthForm(),
        ],
      ),
    );
  }
}






