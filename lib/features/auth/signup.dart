import 'package:fitness_app/core/themes.dart';
import 'package:fitness_app/features/auth/auth_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: Container(
        color: Colors.blue,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 154.h),
                  child: SvgPicture.asset(AuthImages.dumbbellLeft),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 209.h),
                  child: SvgPicture.asset(AuthImages.dumbbellRight),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 91.h),
                  child: SvgPicture.asset(AuthImages.dumbbellCenter),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
