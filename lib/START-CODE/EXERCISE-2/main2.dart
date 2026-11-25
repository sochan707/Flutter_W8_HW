import 'package:flutter/material.dart';
import 'package:w8_hw/START-CODE/EXERCISE-2/ui/screens/temperature_screen.dart';
import 'ui/screens/welcome_screen.dart';

enum AppScreen {
  welcome,
  temperature
}
 
class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  AppScreen currentApp = AppScreen.welcome;

  void changePage(){
    setState(() {
      currentApp = AppScreen.temperature;
    });
  }

  Widget switchPage(){
    switch(currentApp){
      case AppScreen.welcome:
        return WelcomeScreen(onStart: changePage);
      case AppScreen.temperature:
        return TemperatureScreen();
    }
  }

  @override
  Widget build(context) {
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
          child: switchPage(),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
