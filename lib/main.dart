import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/configs/colors.dart';
import 'package:mealapp/screens/meal_categories.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MealCategoriesScreen(),
      theme: ThemeData(
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        primarySwatch: AppColor.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: GoogleFonts.raleway(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline3: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
      ),
    );
  }
}
