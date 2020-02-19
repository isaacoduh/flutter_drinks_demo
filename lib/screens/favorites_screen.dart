import 'package:flutter/material.dart';
import '../models/drink.dart';
import '../widgets/drink_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Drink> favoriteDrinks;

  FavoritesScreen(this.favoriteDrinks);

  @override
  Widget build(BuildContext context) {
    if (favoriteDrinks.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - care to add some?'),
      );
    }else{
      return ListView.builder(
        itemBuilder: (context, index){
          return DrinkItem(id: favoriteDrinks[index].id, title: favoriteDrinks[index].title, imageUrl: favoriteDrinks[index].imageUrl, servetime: favoriteDrinks[index].servetime);
        },
        itemCount: favoriteDrinks.length,
      );
    }
  }
}
