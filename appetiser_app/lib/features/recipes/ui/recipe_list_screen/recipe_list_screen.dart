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
    Container(
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Image.asset("assets/images/hamburger.jpg"),
                  Text("Ginger Marinated Tempeh"),
                  Text("Easy and delicious"),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.watch_later),
                          SizedBox(
                            width: 2,
                          ),
                          Text("20 mins")
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    ),
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

  final String _pageStorageKeyTab = "RecipeListScreenTab";
  final String _pageStorageKeyTabBarView = "RecipeListScreenTabBarView";

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
              pageStorageKey: _pageStorageKeyTab,
              tabcontroller: _tabcontroller,
              tabs: recipeListtabs,
            ),
            TabBarViewWidget(
              pageStorageKey: _pageStorageKeyTabBarView,
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
