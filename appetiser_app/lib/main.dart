import 'package:appetiser_app/features/recipes/ui/startup_screen/startup_screen.dart';
import 'package:flutter/material.dart';

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
      home: StartupScreen(),
    );
  }
}
