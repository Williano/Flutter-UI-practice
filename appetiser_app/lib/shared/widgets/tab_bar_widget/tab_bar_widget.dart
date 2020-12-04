import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final TabController _tabcontroller;
  final List<Tab> _tabs;

  const TabBarWidget({
    Key key,
    @required List<Tab> tabs,
    @required TabController tabcontroller,
  })  : _tabcontroller = tabcontroller,
        _tabs = tabs,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey[600],
      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 3,
            color: Colors.yellow[800],
          ),
          insets: EdgeInsets.symmetric(horizontal: 35.0, vertical: 11.0)),
      indicatorWeight: 3,
      controller: _tabcontroller,
      labelStyle: TextStyle(color: Colors.black),
      tabs: _tabs,
    );
  }
}
