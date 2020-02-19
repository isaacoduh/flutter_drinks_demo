import 'package:drinksdemo/models/drink.dart';
import 'package:drinksdemo/widgets/drink_item.dart';
import 'package:flutter/material.dart';

class CategoryDrinksScreen extends StatefulWidget {
  static const routeName = '/category-drinks';

  final List<Drink> availableDrinks;

  CategoryDrinksScreen(this.availableDrinks);

  @override
  _CategoryDrinksScreenState createState() => _CategoryDrinksScreenState();
}

class _CategoryDrinksScreenState extends State<CategoryDrinksScreen> {
  String categoryTitle;
  List<Drink> displayedDrinks;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedDrinks = widget.availableDrinks.where((drink) {
        return drink.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removeDrink(String drinkId) {
    setState(() {
      displayedDrinks.removeWhere((drink) => drink.id == drinkId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return DrinkItem(
            id: displayedDrinks[index].id,
            title: displayedDrinks[index].title,
            imageUrl: displayedDrinks[index].imageUrl,
            servetime: displayedDrinks[index].servetime,
            // removeItem: _removeDrink,
          );
        },
        itemCount: displayedDrinks.length,
      ),
    );
  }
}
