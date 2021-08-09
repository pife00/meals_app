import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../screens/category/local_widgets/meal_item.dart';

class Favorities extends StatelessWidget {
  List<Meal> _favorites;

  Favorities(this._favorites);

  @override
  Widget build(BuildContext context) {
    if (_favorites.isEmpty) {
      return Center(
        child: Text("You don't have favorites yet"),
      );
    }else{
      return ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                id: _favorites[index].id,
                title: _favorites[index].title,
                imageUrl: _favorites[index].imageUrl,
                duration: _favorites[index].duration,
                complexity: _favorites[index].complexity,
                affordability: _favorites[index].affordability,
                
                );
          },
          itemCount: _favorites.length,
        );
    }
  }
}
