import 'package:flutter/material.dart';
import 'package:smart_inverter/component/graph.dart';
import 'package:smart_inverter/component/outputProgressionBar.dart';
import 'package:smart_inverter/util/power_usage.dart';

class MonitorBody extends StatelessWidget {
  const MonitorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const BouncingScrollPhysics(), // Optional: Adds smooth iOS-style bouncing mechanics
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15.0,
          bottom: 20.0,
        ), // Added bottom padding so content doesn't hit the screen edge
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 700, width: 500, child: Graph()),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(9)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                spacing: 30,
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
      ),
    );
  }
}
