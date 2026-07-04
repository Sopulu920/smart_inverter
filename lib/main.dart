import 'package:flutter/material.dart';
import 'package:smart_inverter/screen/home/home.dart';
import 'package:smart_inverter/screen/output/output.dart';
import 'package:smart_inverter/util/route.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: routes.home,
      routes: {
        routes.home: (context) => const home_screen(),
        routes.output: (context) => const output_screen(),
      },
    ),
  );
}

int index = 0;
Color appbar_color = Color(0xFF3cc33e);

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home Screen'),
        backgroundColor: appbar_color,
      ),

      body: home_body(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          Navigator.pushNamed(context, routes.all[i]);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.power), label: "Output"),
        ],
      ),
    );
  }
}

class output_screen extends StatelessWidget {
  const output_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Output Screen'),
        backgroundColor: appbar_color,
      ),

      body: output_body(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          Navigator.pushNamed(context, routes.all[i]);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.monitor), label: "Monitor"),
        ],
      ),
    );
  }
}
