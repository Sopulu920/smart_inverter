import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';
import 'package:smart_inverter/util/route.dart';

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
    const Color inActive = Color(0xFFD32F2F);
    const Color inActiveTrack = Color(0xB3C33C40);

    return SizedBox(
      width: 400,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // Uses the parent-provided boolean directly
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          // Informs the parent to invert the state
          // if (onChanged != null) {
          //   onChanged!(!outputIsActive);
          // }
          Navigator.pushNamed(
            context,
            routes.pickTime,
            arguments: {"title": outputLabel},
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StyledText(outputLabel, fontSize: 24),
            Switch(
              padding: EdgeInsets.all(5),
              value: outputIsActive,
              onChanged: onChanged,
              // activeColor: active,
              activeThumbColor: active,
              inactiveThumbColor: inActive,
              inactiveTrackColor: inActiveTrack,
            ),
          ],
        ),
      ),
    );
  }
}
