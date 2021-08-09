import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';

class MealsDetailsScreen extends StatelessWidget {
  static String routeName = '/meals-details';

  var _toogleFavorites;

  MealsDetailsScreen(this._toogleFavorites);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final mealSelect =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    print(mealSelect);
    return Scaffold(
        appBar: AppBar(
          title: Text("${mealSelect.title}"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  mealSelect.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                width: 300,
                child: ListView.builder(
                    itemCount: mealSelect.ingredients.length,
                    itemBuilder: (context, index) => Card(
                          color: Theme.of(context).canvasColor,
                          child: Text(
                            mealSelect.ingredients[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Steps',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: 200,
                width: 300,
                child: ListView.builder(
                  itemCount: mealSelect.steps.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(child: Text('#$index')),
                    title: Text(mealSelect.steps[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _toogleFavorites, child: Icon(Icons.favorite)));
  }
}
