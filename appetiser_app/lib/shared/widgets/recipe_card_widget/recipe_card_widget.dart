import 'package:flutter/material.dart';

class RecipeCardWidget extends StatefulWidget {
  final Key key;
  final String recipeImage;
  final String recipeTitle;
  final String recipeSubTitle;
  final String minutesToCook;
  final String serves;
  final String numberOfCalories;

  const RecipeCardWidget(
      {this.key,
      @required this.recipeImage,
      @required this.recipeTitle,
      @required this.recipeSubTitle,
      @required this.minutesToCook,
      @required this.serves,
      @required this.numberOfCalories});

  @override
  _RecipeCardWidgetState createState() => _RecipeCardWidgetState();
}

class _RecipeCardWidgetState extends State<RecipeCardWidget> {
  @override
  Widget build(BuildContext context) {
    String recipeImage = widget.recipeImage;
    String recipeTitle = widget.recipeTitle;
    String recipeSubTitle = widget.recipeSubTitle;
    String minutesToCook = widget.minutesToCook;
    String serves = widget.serves;
    String numberOfCalories = widget.numberOfCalories;

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
                  Text("$minutesToCook",
                      style: TextStyle(color: Colors.grey[500])),
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
                  Text("$serves", style: TextStyle(color: Colors.grey[500])),
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
                    "$numberOfCalories",
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
