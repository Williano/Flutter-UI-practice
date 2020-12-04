import 'package:flutter/material.dart';

class RecipeListTabBarWidget extends StatelessWidget {
  const RecipeListTabBarWidget({
    Key key,
    @required TabController tabcontroller,
  })  : _tabcontroller = tabcontroller,
        super(key: key);

  final TabController _tabcontroller;

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
      tabs: [
        Tab(
          text: "All recipes",
        ),
        Tab(
          text: "Brekkie",
        ),
        Tab(
          text: "Lunch",
        ),
        Tab(
          text: "Dinner",
        )
      ],
    );
  }
}
