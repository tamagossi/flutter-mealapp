import 'package:flutter/foundation.dart';

enum Affordability { Affordable, Pricey, Luxurious }

enum Complexity { Simple, Challenging, Hard }

class Meal {
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final int duration;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String id;
  final String imageUrl;
  final String title;

  const Meal({
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.duration,
    @required this.categories,
    @required this.ingredients,
    @required this.steps,
    @required this.id,
    @required this.imageUrl,
    @required this.title,
  });
}
