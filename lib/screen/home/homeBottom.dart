import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';

class Homebottom extends StatelessWidget {
  const Homebottom({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 450,
      height: 430,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: StyledText("hello there"),
    );
  }
}
