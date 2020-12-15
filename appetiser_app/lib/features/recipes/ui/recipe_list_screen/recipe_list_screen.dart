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
            return RecipeWidget();
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

class RecipeWidget extends StatefulWidget {
  final Key key;
  final String recipeImage;
  final String recipeTitle;
  final String recipeSubTitle;

  const RecipeWidget(
      {this.key, this.recipeImage, this.recipeTitle, this.recipeSubTitle});

  @override
  _RecipeWidgetState createState() => _RecipeWidgetState();
}

class _RecipeWidgetState extends State<RecipeWidget> {
  @override
  Widget build(BuildContext context) {
    String recipeImage = widget.recipeImage;
    String recipeTitle = widget.recipeTitle;
    String recipeSubTitle = widget.recipeSubTitle;

    return Container(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "$recipeImage",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "$recipeTitle",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("$recipeSubTitle"),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.watch_later,
                    color: Colors.grey[500],
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("20 mins", style: TextStyle(color: Colors.grey[500])),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.cleaning_services,
                    color: Colors.grey[500],
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text("2 serves", style: TextStyle(color: Colors.grey[500])),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.wb_twighlight,
                    color: Colors.grey[500],
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "350 calories",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
