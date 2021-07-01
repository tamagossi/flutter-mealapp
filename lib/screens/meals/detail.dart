import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/molecules/list_info.dart';

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    _selectedMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                MoleculeListInfo(
                  contents: _selectedMeal.ingredients,
                  title: 'Ingredients:',
                ),
                MoleculeListInfo(
                  contents: _selectedMeal.steps,
                  title: 'Steps:',
                ),
              ],
            ),
          ),
        ));
  }
}
