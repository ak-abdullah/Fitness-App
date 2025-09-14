import 'package:fitness_app/core/themes.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLinearChart extends StatelessWidget {
  const CustomLinearChart({
    super.key,
    required this.labels,
    required this.axisTitles,
  });

  final List<String> labels;
  final AxisTitles axisTitles;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.currentStatusColor,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 13.h, bottom: 14.h),
            child: Text(
              'Current Status',
              style: GoogleFonts.montserrat(
                color: AppTheme.currentStatusTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 90.h,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),

                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: labels.length - 1,
                titlesData: FlTitlesData(
                  topTitles: axisTitles,
                  rightTitles: axisTitles,
                  leftTitles: axisTitles,
                  bottomTitles: AxisTitles(
                    
                    sideTitles: SideTitles(
                      
                      showTitles: true,
                      interval: 1,

                      getTitlesWidget: (value, meta) {
                        return Text(
                          labels[value.toInt()],
                          style: GoogleFonts.montserrat(
                            fontSize: 9.sp,
                            color: AppTheme.lineChartLabelColor,
                          ),
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    isCurved: true,
                    color: Colors.redAccent,
                    barWidth: 2.r,
                    spots: [
                      FlSpot(0, 5),
                      FlSpot(1, 3),
                      FlSpot(2, 5),
                      FlSpot(3, 5),
                      FlSpot(4, 5),
                    ],
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        stops: [0, 1],
                        colors: [Color(0xFFF34E3A), Color(0xFF0B0B0B)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('78', style: GoogleFonts.montserrat(),),
                  Text('BPM'),     
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
