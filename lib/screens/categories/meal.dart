import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  final Map<dynamic, dynamic> category;

  CategoryMealScreen({this.category});

  @override
  Widget build(BuildContext context) {
    /* Or you can use ModalRoute class */
    // final routeArgs =
    //     ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(category['title']),
      ),
      body: Center(
        child: Text('Hallo from category meal screen'),
      ),
    );
  }
}
