import 'package:flutter/material.dart';

class MoleculeCategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  MoleculeCategoryItem({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        style: Theme.of(context).textTheme.headline3.merge(
              TextStyle(
                color: Colors.white,
              ),
            ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
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
    );
  }
}
