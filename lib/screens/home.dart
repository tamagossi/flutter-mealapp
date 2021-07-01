import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories.dart';
import 'package:mealapp/screens/favorite.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> _screens = [
    {
      'screen': MealCategoriesScreen(),
      'title': 'Categories',
    },
    {
      'screen': FavoriteScreen(),
      'title': 'Favorite',
    },
  ];
  int _selectedScreen = 0;

  void _setActiveTab(int tabIdx) {
    setState(() {
      _selectedScreen = tabIdx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(_screens[_selectedScreen]['title']),
            // bottom: TabBar(
            //   tabs: <Widget>[
            //     Tab(
            //       icon: Icon(Icons.category),
            //       text: 'Categories',
            //     ),
            //     Tab(
            //       icon: Icon(Icons.star),
            //       text: 'Favorite',
            //     ),
            //   ],
            // ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedScreen,
            onTap: _setActiveTab,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.black38,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favorite',
              ),
            ],
          ),
          body: _screens[_selectedScreen]['screen']
          // body: TabBarView(
          //   children: <Widget>[
          //     MealCategoriesScreen(),
          //     FavoriteScreen(),
          //   ],
          // ),
          ),
    );
  }
}