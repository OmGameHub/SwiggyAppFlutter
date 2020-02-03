import 'package:flutter/material.dart';

class ExploreLayout extends StatefulWidget {
  @override
  _ExploreLayoutState createState() => _ExploreLayoutState();
}

class _ExploreLayoutState extends State<ExploreLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFa9abb2),
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFa9abb2),
                  )
                ),
                hintText: 'Search for restaurants and food',
                hintStyle: Theme.of(context).textTheme.bodyText2,
                suffixIcon: Icon(
                  Icons.search,
                  color: Color(0xFFa9abb2),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}