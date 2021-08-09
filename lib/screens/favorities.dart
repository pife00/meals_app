import 'package:flutter/material.dart';
import '../models/meals.dart';

class Favorities extends StatelessWidget {
  List<Meal> _favorites;

  Favorities(this._favorites);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("You don't have favorites yet"),
    );
  }
}
