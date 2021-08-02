import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'local_widgets/category_items.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(8),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children:
          DUMMY_CATEGORIES.map((e) => CategoryItems(e.id,e.title, e.color)).toList(),
    );
  }
}
