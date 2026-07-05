import 'package:flutter/material.dart';
import 'package:smart_inverter/component/nav_bar.dart';
// import 'package:smart_inverter/component/styled_text.dart';
import 'package:smart_inverter/screen/home/home.dart';
import 'package:smart_inverter/screen/home/homeBottom.dart';
import 'package:smart_inverter/screen/monitor/monitor.dart';
import 'package:smart_inverter/util/route.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: routes.home,
      routes: {
        routes.home: (context) => const HomeScreen(),
        routes.output: (context) => const MonitortScreen(),
      },
    ),
  );
}

int index = 0;
Color appbarColor = Color(0xFF3cc33e);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
        backgroundColor: appbarColor,
      ),
      bottomSheet: Homebottom(),
      // extendBody: true,
      // backgroundColor: Colors.white,
      body: HomeBody(),
      bottomNavigationBar: CustomTab(),
    );
  }
}

class MonitortScreen extends StatelessWidget {
  const MonitortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Monitor'),
        backgroundColor: appbarColor,
      ),

      body: MonitorBody(),
      bottomNavigationBar: CustomTab(),
    );
  }
}
