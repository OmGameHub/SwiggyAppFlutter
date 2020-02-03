import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swiggy clone",
      debugShowCheckedModeBanner: false,
      theme: _lightTheme,
      home: MyHomePage(),
    );
  }
}

ThemeData _lightTheme = ThemeData(
  primaryColor: Color(0xFFe46d47),
  accentColor: Color(0xFFe46d47),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 18,
      color: Color(0xFF3d4152),
      fontWeight: FontWeight.w600,
    ),
    bodyText2: TextStyle(
      fontSize: 12,
      color: Color(0xFFa9abb2),
    ),
    button: TextStyle(
      fontSize: 14,
      color: Colors.white,
    )
  )
);