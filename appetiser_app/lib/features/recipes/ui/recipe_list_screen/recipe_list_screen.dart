import 'package:flutter/material.dart';
import 'package:appetiser_app/shared/widgets/tab_bar_view_widget/tab_bar_view.dart';
import 'package:appetiser_app/shared/widgets/tab_bar_widget/tab_bar_widget.dart';
import 'package:appetiser_app/features/recipes/ui/recipe_list_screen/recipe_list_widgets/search_button_widget.dart';

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({Key key}) : super(key: key);

  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen>
    with TickerProviderStateMixin {
  TabController _tabcontroller;

  List<Tab> recipeListtabs = [
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
  ];

  List<Widget> _screens = [
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
  ];

  @override
  void initState() {
    _tabcontroller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SearchFieldWidget(),
            TabBarWidget(
              tabcontroller: _tabcontroller,
              tabs: recipeListtabs,
            ),
            TabBarViewWidget(
              tabcontroller: _tabcontroller,
              screens: _screens,
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }
}
