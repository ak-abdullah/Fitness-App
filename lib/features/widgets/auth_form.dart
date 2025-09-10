import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/auth/auth_images.dart';
import 'package:fitness_app/features/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text_field.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(
            padding: EdgeInsets.only(top: 91.h, left: 140.w, right: 140.w),
            child: SvgPicture.asset(AuthImages.dumbbellCenter),
          ),
          RichText(
            text: TextSpan(
              style: GoogleFonts.lora(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: AppTheme.textColor,
                letterSpacing: 3.w,
              ),
              children: [
                TextSpan(text: 'FIT'),
                TextSpan(
                  text: 'NESS',
                  style: TextStyle(color: AppTheme.textColorLabel),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, bottom: 46.h),
            child: Text(
              'Be an Inspiration',
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45.w),
            child: Column(
              children: [
                CustomTextField(
                  icon: AuthImages.userShape,
                  hint: 'Username',
                ),
                SizedBox(height: 24.h),
                CustomTextField(icon: AuthImages.padlock, hint: 'Password'),
                SizedBox(height: 24.h),
                CustomTextField(
                  icon: AuthImages.envelope,
                  hint: 'Email Address',
                ),
                SizedBox(height: 46.h),
                SizedBox(
                  height: 50.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.buttonColor,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: AppTheme.textColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 98.h),
          RichText(
              text: TextSpan(
                  text: 'Have an Account?',
                  style: GoogleFonts.montserrat(
                    color: AppTheme.textColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(text: 'Login', style: TextStyle(color: AppTheme.loginButtonColor))
                  ]
              )


          ),
        ],
      ),
    );
  }
}