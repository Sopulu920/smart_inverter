import 'package:flutter/material.dart';
// import 'package:smart_inverter/component/styled_text.dart';
// import 'package:smart_inverter/util/route.dart';
import 'package:smart_inverter/util/tab_class.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key});
  @override
  Widget build(BuildContext context) {
    const activeColor = Color(0xFF3cc33e);
    const inactiveColor = Colors.black;

    final String? currentRoute = ModalRoute.of(
      context,
    )?.settings.name; //screen path name

    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        // border: Border.all(width: 3),
        borderRadius: BorderRadius.all(Radius.circular(90)),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabBtn.map((tab) {
          final bool isActive = currentRoute == tab.routing;

          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(12),
              // side: BorderRadius.circular(9),
              // iconAlignment: IconAlignment.start,
            ),
            child: Icon(
              tab.icons,
              size: 36,
              color: isActive ? activeColor : inactiveColor,
            ),
            // Column(
            //   children: [
            //     Icon(tab.icons, size: 36, ),
            //     // StyledText(tab.label)
            //   ],
            // ),
            onPressed: () {
              if (!isActive) {
                Navigator.pushReplacementNamed(context, tab.routing);
              }
            },
          );
        }).toList(),
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
