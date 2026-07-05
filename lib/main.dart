import 'package:flutter/material.dart';
import 'package:smart_inverter/component/nav_bar.dart';
import 'package:smart_inverter/component/styled_text.dart';
import 'package:smart_inverter/screen/home/home.dart';
import 'package:smart_inverter/screen/home/homeBottom.dart';
import 'package:smart_inverter/screen/output/output.dart';
import 'package:smart_inverter/util/route.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: routes.home,
      routes: {
        routes.home: (context) => const HomeScreen(),
        routes.output: (context) => const OutputScreen(),
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
        title: Text('Home Screen'),
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

class OutputScreen extends StatelessWidget {
  const OutputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Output Screen'),
        backgroundColor: appbarColor,
      ),

      body: OutputBody(),
      bottomNavigationBar: CustomTab(),
    );
  }
}
