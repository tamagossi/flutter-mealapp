import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  final Map<dynamic, dynamic> category;

  CategoryMealScreen({this.category});

  @override
  Widget build(BuildContext context) {
    /* Or you can use ModalRoute class to get all navigator argument */
    // final routeArgs =
    //     ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryMeals = MEAL_DUMMIES
        .where((meal) => meal.categories.contains(category['id']))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category['title']),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(
            categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
