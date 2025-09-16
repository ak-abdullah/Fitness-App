import 'package:fitness_app/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BelowLineChartInfo extends StatelessWidget {
  const BelowLineChartInfo({
    super.key,
    required this.reading,
    required this.label,
  });

  final String reading;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          reading,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: AppTheme.textColor,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
            color: AppTheme.currentStatusLabelColor,
          ),
        ),
      ],
    );
  }
}