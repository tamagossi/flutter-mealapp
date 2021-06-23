import 'package:flutter/material.dart';
import 'package:mealapp/screens/meal_categories.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MealCategoriesScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
