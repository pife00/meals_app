import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

 // List<Map> menu =[];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color:Colors.red[600] ,
            height: 120,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(8),
            child: Text(
              'Cooking up',        
              style: TextStyle(fontSize: 42,
              color: Colors.white,
              fontWeight: FontWeight.bold
              ),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.restaurant),
            title: Text('Meals',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
          ),

          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings),
            title: Text('Filters',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
