import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/card_screen.dart';
import 'package:fl_components/screens/home_screen.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Listview2Screen(),
      routes: {
        'listview1': (BuildContext context) => Listview1Screen(),
        'listview2': (BuildContext context) => Listview2Screen(),
        'alert': (BuildContext context) => AlertScreen(),
        'card': (BuildContext context) => CardScreen(),
        'home': (BuildContext context) => HomeScreen(),
      },
    );
  }
}
