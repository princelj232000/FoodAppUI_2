import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI Kit',
      // theme: buildThemeData(),
      home: HomeScreen(),
    );
  }
}
