import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/screens/category/category_meals.dart';
import 'package:meals/screens/category/meals_details_screens.dart';
import 'package:meals/screens/filter.screens.dart';
import 'package:meals/screens/tabs_screen.dart';
import './models/meals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _avaibleMeals = DUMMY_MEALS;
  List<Meal> _favorites = [];
  void _setFilters(Map<String, bool> filtersData) {
    setState(() {
      _filters = filtersData;
      _avaibleMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] == true && !meal.isGlutenFree) {
          return false;
        }

        if (_filters['lactose'] == true && !meal.isLactoseFree) {
          return false;
        }

        if (_filters['vegan'] == true && !meal.isVegan) {
          return false;
        }

        if (_filters['vegetarian'] == true && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void toogleMeal(String mealId) {
    setState(() {
      final existing = _favorites.indexWhere((element) => element.id == mealId);
      if (existing >= 0) {
        setState(() {
          _favorites.removeAt(existing);
        });
      } else {
        _favorites
            .add(DUMMY_MEALS.firstWhere((element) => element.id == mealId));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meals",
        routes: {
          '/': (context) => TabScreen(_favorites),
          CategoryMealsScreen.routeName: (contex) =>
              CategoryMealsScreen(_avaibleMeals),
          MealsDetailsScreen.routeName: (context) =>
              MealsDetailsScreen(toogleMeal),
          FilterScreen.routeName: (context) =>
              FilterScreen(_filters, _setFilters),
        },
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'GowunDodum'));
  }
}
