import 'package:flutter/material.dart';
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

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Color(0xFF3cc33e),
      ),

      body: Text("Hello"),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/output');
          }
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
      appBar: AppBar(title: Text('Output Screen')),

      body: Text("how are you"),
    );
  }
}
