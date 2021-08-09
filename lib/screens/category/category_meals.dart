import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/screens/category/local_widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/categories-meals';
  final List<Meal> _avaibleMeals;

  CategoryMealsScreen(this._avaibleMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? categoryTitle;
  List<Meal> categoryMeals = [];
  bool _loadedData = false;

  @override
  void initState() {
    

    super.initState();
  }

  removeMeal(String mealId) {
    setState(() {
    categoryMeals.removeWhere((element) => element.id == mealId);  
    });
  }

  @override
  void didChangeDependencies() {
    if(_loadedData == false){
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    categoryMeals =widget._avaibleMeals.where((element) {
      return element.categories.contains(categoryId);
    }).toList();
    _loadedData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('$categoryTitle'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                removeItem:removeMeal ,
                );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
