import 'package:flutter/material.dart';
import 'package:smart_inverter/component/load_btn.dart';
import 'package:smart_inverter/util/output_class.dart';
// import 'package:smart_inverter/component/styled_text.dart';

class Homebottom extends StatefulWidget {
  const Homebottom({super.key});

  @override
  State<Homebottom> createState() => _HomebottomState();
}

class _HomebottomState extends State<Homebottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
      width: 450,
      height: 430,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.white,
      ),
      child: Column(
        spacing: 20,
        children: outputLists
            .map(
              (terminal) => LoadBtn(
                outputLabel: terminal.outputLabel,
                outputIsActive: terminal.isActive,
                onChanged: (newValue) {
                  setState(() {
                    terminal.isActive = newValue;
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
