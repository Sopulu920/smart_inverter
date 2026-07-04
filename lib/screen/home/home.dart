import 'package:flutter/material.dart';
import 'package:smart_inverter/component/stat_card.dart';
import 'package:smart_inverter/component/styled_text.dart';
import 'package:smart_inverter/util/stat_class.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/image/power.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(0),
        child: Column(
          spacing: 50,
          children: [
            Container(
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("lib/assets/image/power.jpg"),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 50,
                children: [
                  Column(
                    children: [StyledText("Battery", fontSize: 24)],
                  ), //Battery

                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      // controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: statList.length,
                      itemBuilder: (context, index) {
                        //for loader
                        if (index == statList.length) {
                          return Center(child: CircularProgressIndicator());
                        }

                        final stats = statList[index];
                        return Padding(
                          padding: EdgeInsetsGeometry.all(3),
                          child: StatCard(
                            label: stats.statLabel,
                            value: stats.statValue,
                            unit: stats.statUnit,
                          ),
                        ); //statcard
                      },
                    ),
                  ), //stat
                ],
              ),
            ), //first half
            Container(
              padding: EdgeInsets.all(15),
              width: 450,
              height: 297,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: StyledText("hello there"),
            ),
          ],
        ),
      ),
    );
  }
}
