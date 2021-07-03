import 'package:flutter/material.dart';
import 'package:mealapp/widgets/organisms/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filter';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: OrganismMainDrawer()),
      appBar: AppBar(
        title: Text('Meal Filter'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Hallo from filter screen'),
        ),
      ),
    );
  }
}
