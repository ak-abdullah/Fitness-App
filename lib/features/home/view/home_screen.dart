import 'package:fitness_app/core/themes.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'widgets/custom_linear_chart.dart';
import 'widgets/welcome_header_with_icon_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = ["day 1", "day 2", "day 3", "day 4", "day 5"];
    var axisTitles = AxisTitles(sideTitles: SideTitles(showTitles: false));
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 17.w, right: 17.w, top: 72.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeHeaderWithIconMenu(),
            SizedBox(height: 28.h,),
            CustomLinearChart(labels: labels, axisTitles: axisTitles),
            
          ],
        ),
      ),
    );
  }
}


