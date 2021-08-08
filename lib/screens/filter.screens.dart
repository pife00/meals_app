import 'package:flutter/material.dart';
import 'package:meals/screens/category/local_widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static String routeName = '/filter-screen';
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Boy'),
      ),
    );
  }
}
