import 'package:flutter/material.dart';

class CartLayout extends StatefulWidget {
  @override
  _CartLayoutState createState() => _CartLayoutState();
}

class _CartLayoutState extends State<CartLayout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 16),
            child: Image(
              image: AssetImage('assets/images/cart_empty.png'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),

          Text(
            "Good food is always cooking",
            style: Theme.of(context).textTheme.bodyText1,
          ),

          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(
              "Your cart is empty. Add something from the menu",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),

        ],
      ),
    );
  }
}