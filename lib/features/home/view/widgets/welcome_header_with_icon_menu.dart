import 'package:fitness_app/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WelcomeHeaderWithIconMenu extends StatelessWidget {
  const WelcomeHeaderWithIconMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.montserrat(
                  color: AppTheme.homePageTextColor,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    
                    text: 'Welcome ',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: 'Roberto',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: ' !',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    3,
                    (index) => Container(
                      width: 4.67,
                      height: 4.67,
                      decoration: BoxDecoration(
                        color: AppTheme.dotColor,

                        borderRadius: BorderRadius.circular(1.4.r),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 4.w),
        Text(
          DateFormat('EEEE, d MMMM yyyy').format(DateTime.now()),
          style: GoogleFonts.montserrat(
            color: AppTheme.homePageDateColor,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
