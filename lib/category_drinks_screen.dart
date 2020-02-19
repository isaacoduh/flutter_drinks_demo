import 'package:flutter/material.dart';

class CategoryDrinksScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryDrinksScreen(this.categoryId, this.categoryTitle);
  @override
  Widget build(BuildContext context) {
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
