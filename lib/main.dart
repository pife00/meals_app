import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals/screens/category/category_meals.dart';
import 'package:meals/screens/category/meals_details_screens.dart';
import 'screens/category/categories_screen.dart';

void main(){
  runApp(MaterialApp(
    title:"Meals",

    routes: {
      '/':(context)=>MyApp(),
      CategoryMealsScreen.routeName:(contex)=> CategoryMealsScreen(),  
      MealsDetailsScreen.routeName:(context)=> MealsDetailsScreen(),  
    },


    theme:ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.amber,
      canvasColor: Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'GowunDodum'
    )

  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    
    // ignore: non_constant_identifier_names
    Bar(){
      return AppBar(
        title:Text("DeliMeals"),
      );
    }


    return Scaffold(
       appBar: Bar(),
       body: CategoriesScreen(),
       
    );
  }
}

