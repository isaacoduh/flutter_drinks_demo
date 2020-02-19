import 'package:drinksdemo/dummy_data.dart';
import 'package:drinksdemo/widgets/drink_item.dart';
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
    final categoryId = routeArgs['id'];
    final categoryDrinks = DUMMY_DRINKS.where((drink) {
      return drink.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return DrinkItem(id:categoryDrinks[index].id,title: categoryDrinks[index].title, imageUrl: categoryDrinks[index].imageUrl, servetime: categoryDrinks[index].servetime);
        },
        itemCount: categoryDrinks.length,
      ),
    );
  }
}
