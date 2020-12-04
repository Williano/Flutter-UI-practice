import 'package:appetiser_app/features/recipes/ui/recipe_list_screen/recipe_list_widgets/recipe_list_tab_bar_view.dart';
import 'package:appetiser_app/features/recipes/ui/recipe_list_screen/recipe_list_widgets/recipe_list_tab_bar_widget.dart';
import 'package:appetiser_app/features/recipes/ui/recipe_list_screen/recipe_list_widgets/search_button_widget.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen>
    with TickerProviderStateMixin {
  TabController _tabcontroller;

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
            RecipeListTabBarWidget(tabcontroller: _tabcontroller),
            RecipeListTabBarViewWidget(tabcontroller: _tabcontroller)
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
