import 'package:flutter/material.dart';
import 'package:appetiser_app/features/recipes/ui/home_screen/home_screen.dart';

void main() {
  runApp(AppetiserApp());
}

class AppetiserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
