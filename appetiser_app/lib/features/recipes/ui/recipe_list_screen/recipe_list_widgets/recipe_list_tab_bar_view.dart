import 'package:flutter/material.dart';

class RecipeListTabBarViewWidget extends StatelessWidget {
  const RecipeListTabBarViewWidget({
    Key key,
    @required TabController tabcontroller,
  })  : _tabcontroller = tabcontroller,
        super(key: key);

  final TabController _tabcontroller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      key: PageStorageKey("Tabcontroller"),
      controller: _tabcontroller,
      children: [
        Container(color: Colors.red),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.black,
        )
      ],
    ));
  }
}
