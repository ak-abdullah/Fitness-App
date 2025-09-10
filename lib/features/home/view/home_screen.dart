import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = ["day 1", "day 2", "day 3", "day 4", "day 5"];
    var axisTitles = AxisTitles(sideTitles: SideTitles(showTitles: false));
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Container(
            // color: Colors.redAccent,
            height: 90.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                        reservedSize: 20,
                        showTitles: true,
                        interval: 1,

                        getTitlesWidget: (value, meta) {
                          return SideTitleWidget(
                            fitInside: SideTitleFitInsideData(
                              enabled: true,
                              axisPosition: meta.axisPosition,
                              parentAxisSize: meta.parentAxisSize,
                              distanceFromEdge: 20,
                            ),
                            meta: meta,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: value != 0 || value != 1 ? 20 : 0,
                              ),
                              child: Text(
                                labels[value.toInt()],
                                style: TextStyle(fontSize: 9.sp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      color: Colors.redAccent,
                      barWidth: 4,
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
          ),
        ),
      ),
    );
  }
}
