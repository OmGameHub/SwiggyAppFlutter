import 'package:flutter/material.dart';

import 'screens/NearMeLayout.dart';
import 'screens/ExploreLayout.dart';
import 'screens/CartLayout.dart';
import 'screens/AccountLayout.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  Widget _body;

  @override
  void initState() {
    super.initState();

    this._body = NearMeLayout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() => 
  BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.location_on),
        title: Text('Near Me'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text('Explore'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text('Cart'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        title: Text('Account'),
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Theme.of(context).accentColor,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
    onTap: _onItemTapped,
    type: BottomNavigationBarType.fixed,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    _setBodyLayout();
  }

  void _setBodyLayout() 
  {
    switch (_selectedIndex) 
    {
      case 0: 
        setState(() => _body = NearMeLayout());  
        break;

      case 1: 
        setState(() => _body = ExploreLayout());  
        break;

      case 2: 
        setState(() => _body = CartLayout());  
        break;

      case 3: 
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (_) => AccountLayout(),
          )
        );
        _onItemTapped(0);
        break;
    }
  }
}