import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(MdiIcons.chefHat)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.smallcircle_circle)),
        BottomNavigationBarItem(icon: Icon(MdiIcons.noodles)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person))
      ],
      selectedItemColor: Colors.yellow[800],
      unselectedItemColor: Colors.grey[600],
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
