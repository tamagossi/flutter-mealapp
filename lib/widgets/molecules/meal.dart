import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/atoms/meal_info.dart';

class MoleculeMeal extends StatelessWidget {
  final Affordability affordability;
  final Complexity complexity;
  final int duration;
  final String imageUrl;
  final String title;

  MoleculeMeal({
    @required this.affordability,
    @required this.complexity,
    @required this.duration,
    @required this.imageUrl,
    @required this.title,
  });

  void selectMeal() {
    print('Hallo mate');
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unknown';
    }
  }

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Simple:
        return 'Simple';
        break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: selectMeal,
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    // TODO: Change to cached image network later
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 250,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    // TODO: Make the container attached to the right
                    child: Container(
                      color: Colors.black54,
                      width: 280,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        title,
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .merge(TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    AtomMealInfo(
                      icon: Icons.schedule,
                      info: '$duration mins',
                    ),
                    AtomMealInfo(
                      icon: Icons.work,
                      info: complexityText,
                    ),
                    AtomMealInfo(
                      icon: Icons.attach_money,
                      info: affordabilityText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
