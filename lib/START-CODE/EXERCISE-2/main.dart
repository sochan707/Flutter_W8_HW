import 'package:flutter/material.dart';
import 'package:w8_hw/START-CODE/EXERCISE-2/ui/screens/temperature_screen.dart';
import 'ui/screens/welcome_screen.dart';
 
class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  int pageId = 0;

  void screenSwitch(){
    setState(() {
      setState(() {
        pageId = 1;
      });
    });
  }

  @override
  Widget build(context) {
    List<Widget> pageIDs = [WelcomeScreen(onStart: screenSwitch), TemperatureScreen()];
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: pageIDs[pageId],
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
