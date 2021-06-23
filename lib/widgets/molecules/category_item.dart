import 'package:flutter/material.dart';

class MoleculeCategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  MoleculeCategoryItem({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.title),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            this.color.withOpacity(0.7),
            this.color,
          ],
        ),
      ),
    );
  }
}
