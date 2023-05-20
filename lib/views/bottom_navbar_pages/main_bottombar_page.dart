
import 'package:flutter/material.dart';
import 'package:marketplace_app/views/bottom_navbar_pages/profile_page.dart';

import 'home_page.dart';
import 'message_page.dart';

class MainBottomBarPage extends StatefulWidget {
  const MainBottomBarPage({Key? key}) : super(key: key);

  @override
  State<MainBottomBarPage> createState() => _MainBottomBarPageState();
}

class _MainBottomBarPageState extends State<MainBottomBarPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    MessagePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Icon(Icons.search),
                ),
                label: 'Explorer',
                ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2),
                  child: Icon(Icons.favorite_border),
                ),
                label: 'Favoris',
                ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(Icons.ac_unit),
              ),
              label: 'Voyages',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(Icons.messenger_outline),
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Icon(Icons.person),
              ),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          selectedIconTheme: IconThemeData(
            color: Colors.red,
            size: 23,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey.shade400,
            size: 23,
          ),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey.shade400,
          iconSize: 20,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          elevation: 7,
        ),
      ),
    );
  }
}
