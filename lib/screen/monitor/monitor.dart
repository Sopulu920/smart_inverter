import 'package:flutter/material.dart';
import 'package:smart_inverter/component/graph.dart';
import 'package:smart_inverter/component/outputProgressionBar.dart';
import 'package:smart_inverter/util/power_usage.dart';

class MonitorBody extends StatelessWidget {
  const MonitorBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        spacing: 30,
        children: [
          SizedBox(height: 500, width: 500, child: Graph()),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
              // border: Border.all(width: 3),
              borderRadius: BorderRadius.all(Radius.circular(9)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurStyle: BlurStyle.normal,
                  // spreadRadius: 2,
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              spacing: 20,
              children: outputPower
                  .map(
                    (power) => OutputProgressionBar(
                      terminal: power.outputTerminal,
                      percentage: power.outputPercentage,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
