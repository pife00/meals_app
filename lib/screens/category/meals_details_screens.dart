import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/models/category.dart';


class MealsDetailsScreen   extends StatelessWidget {

  static String routeName = '/meals-details';
  
  const MealsDetailsScreen  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final mealSelect = DUMMY_MEALS.where((element){
      return element.id.contains(mealId);
    }).toList();
    print(mealSelect);
    return Scaffold(
      appBar: AppBar(
        title:Text(""),
      ),
      body: Text("$mealSelect"),
    );
  }
}