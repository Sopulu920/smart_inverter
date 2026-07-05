import 'package:flutter/material.dart';
import 'package:smart_inverter/util/route.dart';

class TabList {
  final IconData icons;
  final String label;
  final String routing;

  TabList({required this.icons, required this.label, required this.routing});
}

List<TabList> tabBtn = [
  TabList(icons: Icons.home, label: "Home", routing: routes.home),
  TabList(icons: Icons.bar_chart, label: "Monitor", routing: routes.output),
];
