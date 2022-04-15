import 'package:flutter/material.dart';
import 'package:grow_app_mobile/screens/home_screen.dart';
import 'package:grow_app_mobile/screens/map_screen.dart';
import 'package:grow_app_mobile/screens/order_screen.dart';
import 'package:grow_app_mobile/screens/shop_screen.dart';

  class Wrapper extends StatefulWidget {

  
    @override
    _WrapperState createState() => _WrapperState();
  }

  class _WrapperState extends State<Wrapper> {
    int _selectedIndex = 0;

    final List<Widget>_pageOptions = [
      HomeScreen(),
      ShopScreen(),
      OrderScreen(),
      MapScreen(),
    ];

      static const TextStyle optionStyle =
          TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
      static const List<Widget> _widgetOptions = <Widget>[
        Text(
          'Index 0: Home',
          style: optionStyle,
        ),
        Text(
          'Index 1: Business',
          style: optionStyle,
        ),
        Text(
          'Index 2: School',
          style: optionStyle,
        ),
        Text(
          'Index 3: School',
          style: optionStyle,
        ),
      ];

      void _onItemTapped(int index) {
        setState(() {
          _selectedIndex = index;
        });
      }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: _pageOptions[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[200],
            selectedItemColor: Colors.green[200],
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            items:[
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Shop'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delivery_dining),
                title: Text('Order'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text('Map'),
              )
            ],
          ),
        );
      }
    }
