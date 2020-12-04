import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageStorageBucket pageStorageBucket = PageStorageBucket();

  final List<Widget> _screens = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(MdiIcons.chefHat), label: "Recipes"),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.smallcircle_circle), label: "Diets"),
    BottomNavigationBarItem(icon: Icon(MdiIcons.noodles), label: "Ingredients"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: pageStorageBucket,
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        elevation: 0.0,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.yellow[800],
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
