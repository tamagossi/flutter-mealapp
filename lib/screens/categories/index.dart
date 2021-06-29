import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy.dart';
import 'package:mealapp/widgets/molecules/category.dart';

class MealCategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView(
        padding: EdgeInsets.all(15),
        children: MEAL_CATEGORY_DUMMIES
            .map(
              (cat) => MoleculeCategoryItem(
                color: cat.color,
                id: cat.id,
                title: cat.title,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          maxCrossAxisExtent: 200,
        ),
      ),
    );
  }
}
