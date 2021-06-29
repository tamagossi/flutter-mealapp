import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';

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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
