import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories.dart';
import 'package:mealapp/screens/favorite.dart';
import 'package:mealapp/widgets/organisms/main_drawer.dart';

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
        appBar: AppBar(title: Text(_screens[_selectedScreen]['title'])),
        drawer: SafeArea(child: OrganismMainDrawer()),
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
        body: SafeArea(child: _screens[_selectedScreen]['screen']),
      ),
    );
  }
}
