import 'package:flutter/material.dart';
import 'package:flutter_application_12/screens/screen4.dart';
import 'package:flutter_application_12/screens/screen5.dart';
import 'package:flutter_application_12/screens/screen6.dart';
import 'package:flutter_application_12/screens/screen7.dart';
import 'package:flutter_application_12/screens/screen8.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: scr10(),
    );
  }
}

class scr10 extends StatefulWidget {
  const scr10({super.key});

  @override
  State<scr10> createState() => _scr10State();
}

class _scr10State extends State<scr10> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    scr4(),
    scr5(),
    scr7(),
    scr6(),
    scr8()
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wish list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
