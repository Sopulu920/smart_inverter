import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';

class LoadBtn extends StatelessWidget {
  final String outputLabel;
  final bool outputIsActive;
  final ValueChanged<bool>? onChanged; // Callback to notify the parent screen

  const LoadBtn({
    super.key,
    this.outputLabel = "",
    this.outputIsActive = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    const Color active = Color(0xFF3cc33e);
    const Color inActive = Colors.white;

    return SizedBox(
      width: 400,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // Uses the parent-provided boolean directly
          backgroundColor: outputIsActive ? active : inActive,
        ),
        onPressed: () {
          // Informs the parent to invert the state
          if (onChanged != null) {
            onChanged!(!outputIsActive);
          }
        },
        child: StyledText(outputLabel, fontSize: 24),
      ),
    );
  }
}
