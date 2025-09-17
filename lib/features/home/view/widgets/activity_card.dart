import 'dart:ui';

import 'package:fitness_app/core/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.image, required this.text});

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 127.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),

        ClipRRect(
          borderRadius: BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(14.r),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Container(
              width: 181.w,
              padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 16.w),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(14.r),
                color: Colors.white.withValues(alpha: 0.18),
              ),

              child: Text(
                text,
                style: GoogleFonts.montserrat(
                  color: AppTheme.activityHeaderTextColor,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
