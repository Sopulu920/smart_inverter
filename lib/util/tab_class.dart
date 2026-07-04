import 'package:flutter/material.dart';
import 'package:smart_inverter/util/route.dart';

class tabList {
  final IconData icons;
  final String label;
  final String routing;

  tabList({required this.icons, required this.label, required this.routing});
}

List<tabList> tabBtn = [
  tabList(icons: Icons.home, label: "Home", routing: routes.home),
  tabList(icons: Icons.graphic_eq, label: "Monitor", routing: routes.output),
];
