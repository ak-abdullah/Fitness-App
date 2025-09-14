import 'package:fitness_app/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.icon, required this.hint});
  final String icon;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.w,
      decoration: BoxDecoration(
        color: AppTheme.textFieldBackgroundColor,
        borderRadius: BorderRadius.circular(26.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 29.w),
            child: SvgPicture.asset(icon, width: 20, height: 20),
          ),

          Expanded(
            child: Theme(
              data: Theme.of(context).copyWith(
                textSelectionTheme: TextSelectionThemeData(

                  selectionColor: AppTheme.selectionColor,
                  selectionHandleColor: AppTheme.selectionHandleColor,
                ),
              ),
              child: TextFormField(

                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  color: AppTheme.textColor,
                ),
                cursorColor: AppTheme.cursorColor,

                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    color: AppTheme.hintTextColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
