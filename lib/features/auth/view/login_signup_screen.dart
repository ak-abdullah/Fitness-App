import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/auth/assets/auth_images.dart';
import 'package:fitness_app/features/auth/view/widgets/auth_form.dart';
import 'package:fitness_app/features/auth/view/widgets/custom_text_field.dart';
import 'package:fitness_app/features/auth/view/widgets/decorated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/login_signup_screen_controller.dart';

class LoginSingnupScreen extends StatelessWidget {
  LoginSingnupScreen({super.key});
  final LoginSignupScreenController _controller = Get.put(LoginSignupScreenController()); 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: AppTheme.appBackgroundColor,
      body: Stack(
        children: [
          DecoratedBackground(),
          AuthForm(controller: _controller),
        ],
      ),
    );
  }
}






