import 'package:flutter/material.dart';
import 'package:meals/screens/category/local_widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static String routeName = '/filter-screen';
  const FilterScreen({Key? key}) : super(key: key);

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
      Function updateValue,
    ) {
      return SwitchListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          value: value,
          onChanged:updateValue,
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
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
                
    
              ],
            ))
          ],
        ));
  }
}
