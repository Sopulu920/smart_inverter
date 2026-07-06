import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void f() {
//   int y = 100 % 10;
//   print(y);
// }

class Battery extends StatelessWidget {
  final int level;
  // final Color inActiveColor;
  const Battery({
    required this.level,
    // required this.inActiveColor,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Color active = Color(0xFF3cc33e);
    Color inActiveColor = Color(0xFF7A7D85);

    int totalBars = 10;
    int safeLevel = (level / 10).round();

    List<Widget> bar = [];

    chooseColor(int index) {
      if (index <= safeLevel) return active;
      return inActiveColor;
    }

    // f();
    for (int i = 0; i <= totalBars; i++) {
      bar.add(
        Container(
          width: 15,
          height: 30,
          decoration: BoxDecoration(
            color: chooseColor(i),
            // border: Border.all(),
            borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
          ),
        ),
      );
    }

    return Row(spacing: 10, children: bar);
  }
}
