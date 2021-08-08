import 'package:flutter/material.dart';
import 'package:meals/screens/filter.screens.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red[600],
            height: 120,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
            child: Text(
              'Cooking up',
              style: TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            leading: Icon(Icons.restaurant),
            title: Text('Meals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            },
            leading: Icon(Icons.settings),
            title: Text('Filters',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
