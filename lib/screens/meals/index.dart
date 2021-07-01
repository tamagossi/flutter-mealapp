import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy.dart';
import 'package:mealapp/widgets/molecules/meal.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  final Map<dynamic, dynamic> category;

  MealsScreen({this.category});

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
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MoleculeMeal(
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
              id: categoryMeals[index].id,
              imageUrl: categoryMeals[index].imageUrl,
              title: categoryMeals[index].title,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
