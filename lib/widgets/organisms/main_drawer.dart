import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters.dart';
import 'package:mealapp/screens/home.dart';
import 'package:mealapp/widgets/atoms/drawer_item.dart';

class OrganismMainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.white,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          AtomDrawerItem(
            icon: Icons.restaurant,
            label: 'Meals',
            onTapItem: HomeScreen(),
          ),
          AtomDrawerItem(
            icon: Icons.settings,
            label: 'Filters',
            onTapItem: FilterScreen(),
          ),
        ],
      ),
    );
  }
}
