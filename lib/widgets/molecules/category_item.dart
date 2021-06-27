import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories/meal.dart';

class MoleculeCategoryItem extends StatelessWidget {
  final Color color;
  final String id;
  final String title;

  MoleculeCategoryItem({
    this.color,
    this.id,
    this.title,
  });

  void redirectToCategoryMealListScreen(BuildContext ctx) {
    /*  If you don't have named route defined in main.dart */
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => CategoryMealScreen(
          category: {
            'id': id,
            'title': title,
          },
        ),
      ),
    );

    /* Else */
    // Navigator.of(ctx).pushNamed(
    //   CategoryMealScreen.routeName,
    //   arguments: {
    //     'category': {
    //       'id': id,
    //       'title': title,
    //     },
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => redirectToCategoryMealListScreen(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
        child: Text(
          this.title,
          style: Theme.of(context)
              .textTheme
              .headline3
              .merge(TextStyle(color: Colors.white)),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              this.color.withOpacity(0.5),
              this.color,
            ],
          ),
        ),
      ),
    );
  }
}
