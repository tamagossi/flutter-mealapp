import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy.dart';
import 'package:mealapp/models/meal.dart';

class MealDetailScreen extends StatefulWidget {
  final String id;
  static const routeName = 'meal/detail';

  MealDetailScreen({
    this.id,
  });

  @override
  _MealDetailScreenState createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  Meal _selectedMeal;

  @override
  void initState() {
    super.initState();
    _selectedMeal =
        MEAL_DUMMIES.firstWhere((meal) => meal.id.contains(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_selectedMeal.title)),
      // TODO: Find design on the internet and implement to this one
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              _selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _selectedMeal.ingredients
                        .map(
                          (ingredient) => Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text('⚫   $ingredient'),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
