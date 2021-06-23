import 'package:flutter/material.dart';
import 'package:mealapp/data/meal_category.dart';
import 'package:mealapp/widgets/molecules/category_item.dart';

class MealCategoriesScreen extends StatelessWidget {
  const MealCategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView(
        children: MEAL_CATEGORY_DUMMIES
            .map(
              (cat) => MoleculeCategoryItem(
                title: cat.title,
                color: cat.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
      ),
    );
  }
}
