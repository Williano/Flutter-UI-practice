import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Container(
        height: 30,
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              prefixIcon: FaIcon(
                FontAwesomeIcons.search,
                color: Colors.grey[400],
              ),
              labelText: "Search ingredients..",
              labelStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 15,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: Colors.grey[100],
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200], width: 0),
                  borderRadius: BorderRadius.circular(50)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200], width: 0.0),
                  borderRadius: BorderRadius.circular(50)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200], width: 0),
                  borderRadius: BorderRadius.circular(20))),
        ),
      ),
    );
  }
}
