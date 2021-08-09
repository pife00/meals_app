import 'package:flutter/material.dart';
import 'package:meals/screens/category/local_widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static String routeName = '/filter-screen';
  final saveFilters;

  FilterScreen(this.saveFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    Widget _SwitchList(
      String title,
      String subtitle,
      bool value,
      ValueChanged updateValue,
    ) {
      return SwitchListTile(
          title: Text(title,style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold),),
          subtitle: Text(subtitle,style: TextStyle(fontSize: 18 ),),
          value: value,
          onChanged: updateValue);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
          actions:<Widget> [
            IconButton(
            onPressed: widget.saveFilters, 
            icon: Icon(Icons.save))
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                'Adjust you meal selection',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _SwitchList('Free Gluten', 'Only show food free of gluten',
                    _glutenFree, (value) {setState(() {
                      _glutenFree = value;
                    });}),

                _SwitchList('Vegetarian', 'Only show meal vegetarian',
                    _vegetarian, (value) {setState(() {
                      _vegetarian = value;
                    });}),
                
                _SwitchList('Vegan', 'Only show food for vegans',
                    _vegan, (value) {setState(() {
                      _vegan = value;
                    });}),

                _SwitchList('Lactose Free', 'Only show food free of lactose',
                    _lactoseFree, (value) {setState(() {
                      _lactoseFree = value;
                    });})
              ],
            ))
          ],
        ));
  }
}
