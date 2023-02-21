import 'package:flutter/material.dart';

//Screens
import './screens/home_screen.dart';
import './screens/planets_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Space Mobile App Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        PlanetsScreen.routeName: (ctx) => PlanetsScreen(),
      },
    );
  }
}
