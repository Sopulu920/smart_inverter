import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';

class OutputProgressionBar extends StatelessWidget {
  const OutputProgressionBar({
    super.key,
    required this.percentage,
    required this.terminal,
  });
  final double percentage;
  final String terminal;
  @override
  Widget build(BuildContext context) {
    double progressionBar = 400;
    double progressPercentage = percentage;

    double progress = (progressPercentage / 100).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StyledText(terminal, fontSize: 24),
            StyledText("$progressPercentage%", fontSize: 20),
          ],
        ),
        Container(
          width: progressionBar,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress,

            child: Container(color: Color(0xFF3cc33e)),
          ),
        ),
      ],
    );
  }
}
