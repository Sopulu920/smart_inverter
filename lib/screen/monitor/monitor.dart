import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MonitorBody extends StatelessWidget {
  const MonitorBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: BarChart(
        BarChartData(
          // titlesData: FlTitlesData(show: true),
          // borderData: FlBorderData(show: true),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  toY: 8,
                  rodStackItems: [
                    BarChartRodStackItem(0, 3, Colors.red),
                    BarChartRodStackItem(3, 4, Colors.lightGreenAccent),
                    BarChartRodStackItem(4, 6, Colors.orangeAccent),
                  ],
                  color: Colors.blue,
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [BarChartRodData(toY: 10, color: Colors.green)],
            ),
          ],
        ),
      ),
    );
  }
}
