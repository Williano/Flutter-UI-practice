import 'package:appetiser_app/features/recipes/ui/recipe_list_screen/recipe_list_widgets/search_button_widget.dart';
import 'package:flutter/material.dart';

class RecipeListScreen extends StatefulWidget {
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
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
            Expanded(child: Container())
          ],
        ),
      )),
    );
  }
}
