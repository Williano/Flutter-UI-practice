import 'package:flutter/material.dart';

class RecipeListTabBarViewWidget extends StatelessWidget {
  final TabController _tabcontroller;
  final List<Widget> _screens;

  const RecipeListTabBarViewWidget({
    Key key,
    @required TabController tabcontroller,
    @required List<Widget> screens,
  })  : _tabcontroller = tabcontroller,
        _screens = screens,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      key: PageStorageKey("Tabcontroller"),
      controller: _tabcontroller,
      children: _screens,
    ));
  }
}
