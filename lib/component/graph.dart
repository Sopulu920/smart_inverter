import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// class point {
//   final int x;
//   final double y;

//   point({required this.x, required this.y});

List<double> p = [40.0, 30.2, 38.0, 22.4, 42.6, 39.0];

// List<point> points = [
//   point(x: 0, y: 1),
//   point(x: 1, y: 12),
//   point(x: 2, y: 23),
//   point(x: 3, y: 14),
//   point(x: 4, y: 18),
//   point(x: 5, y: 22),
//   point(x: 6, y: 11),
// ];

class Graph extends StatelessWidget {
  const Graph({super.key});
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 70,
        // titlesData: FlTitlesData(show: true),
        // borderData: FlBorderData(show: true),
        barGroups: [
          for (int i = 0; i < p.length; i++)
            BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(
                  toY: p[i],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color(0xFF3cc33e),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
