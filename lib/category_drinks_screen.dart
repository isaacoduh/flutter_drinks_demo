import 'package:flutter/material.dart';

class CategoryDrinksScreen extends StatelessWidget {
  static const routeName = '/category-drinks';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryDrinksScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final CategoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'The drinks for the category'
        ),
      ),
    );
  }
}
