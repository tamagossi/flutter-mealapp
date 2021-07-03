import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/configs/colors.dart';
import 'package:mealapp/screens/filters.dart';
import 'package:mealapp/screens/home.dart';
import 'package:mealapp/screens/categories.dart';
import 'package:mealapp/screens/meals/detail.dart';
import 'package:mealapp/screens/meals/index.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Add implementaion of Cuppertino app
    return MaterialApp(
      home: HomeScreen(),
      title: 'Flutter Demo',
      routes: {
        MealCategoriesScreen.routeName: (ctx) => MealCategoriesScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        MealsScreen.routeName: (ctx) => MealsScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
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
      // onGenerateRoute: (settings) {
      //   You can use this method everytime you use pushNamed but the screen is not registered in routes.
      //   You just need to return the screen
      // },
    );
  }
}
