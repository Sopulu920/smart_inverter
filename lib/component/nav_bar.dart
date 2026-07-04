import 'package:flutter/material.dart';
import 'package:smart_inverter/component/styled_text.dart';
// import 'package:smart_inverter/util/route.dart';
import 'package:smart_inverter/util/tab_class.dart';

class custom_tab extends StatelessWidget {
  const custom_tab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(90)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabBtn
            .map(
              (tab) => ElevatedButton(
                style: ButtonStyle(
                  // padding: EdgeInsets.only(top:2),
                  // iconAlignment: IconAlignment.start,
                ),
                child: Column(
                  children: [Icon(tab.icons, size: 36), StyledText(tab.label)],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, tab.routing);
                },
              ),
            )
            .toList(),
        // [
        //   ElevatedButton(
        //     child: Column(children: [Icon(Icons.home), StyledText("Home")]),
        //     onPressed: () {
        //       Navigator.pushNamed(context, routes.home);
        //     },
        //   ),
        // ],
      ),
    );
  }
}
