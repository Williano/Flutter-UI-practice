import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  final TabController _tabcontroller;
  final List<Widget> _screens;
  final String _pageStorageKey;

  const TabBarViewWidget(
      {Key key,
      @required TabController tabcontroller,
      @required List<Widget> screens,
      @required String pageStorageKey})
      : _tabcontroller = tabcontroller,
        _screens = screens,
        _pageStorageKey = pageStorageKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      key: PageStorageKey("$_pageStorageKey"),
      controller: _tabcontroller,
      children: _screens,
    ));
  }
}
