import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/configs/colors.dart';
import 'package:mealapp/screens/categories/index.dart';
import 'package:mealapp/screens/categories/meals.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MealCategoriesScreen(),
      title: 'Flutter Demo',
      initialRoute: MealCategoriesScreen.routeName,
      routes: {
        MealCategoriesScreen.routeName: (ctx) => MealCategoriesScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
      },
      theme: ThemeData(
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        primarySwatch: AppColor.white,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: GoogleFonts.raleway(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: GoogleFonts.montserrat(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
              headline2: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.w600,
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
