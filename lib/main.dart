import 'package:drinksdemo/categories_screen.dart';
import 'package:drinksdemo/category_drinks_screen.dart';
import 'package:drinksdemo/dummy_data.dart';
import 'package:drinksdemo/models/drink.dart';
import 'package:drinksdemo/screens/drink_detail_screen.dart';
import 'package:drinksdemo/screens/filters_screen.dart';
import 'package:drinksdemo/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'glutten': false,
  };
  List<Drink> _availableDrinks = DUMMY_DRINKS;
  List<Drink> _favoriteDrinks = [];

  void _setFilters(Map<String, bool>filterData){
    setState(() {
      _filters = filterData;
      _availableDrinks = DUMMY_DRINKS.where((drink){
        if(_filters['glutten'] && !drink.isGluttenFree){
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String drinkId){
    final existingIndex = _favoriteDrinks.indexWhere((drink) => drink.id == drinkId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteDrinks.removeAt(existingIndex);
      });
    }else{
      setState(() {
        _favoriteDrinks.add(DUMMY_DRINKS.firstWhere((drink) => drink.id == drinkId));
      });
    }
  }

  bool _isDrinkFavorite(String id){
    return _favoriteDrinks.any((drink) => drink.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrinkGuide',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/' : (context) => TabsScreen(_favoriteDrinks),
        CategoryDrinksScreen.routeName: (context) => CategoryDrinksScreen(_availableDrinks),
        DrinkDetailScreen.routeName: (context) => DrinkDetailScreen(_toggleFavorite, _isDrinkFavorite),
        FiltersScreen.routeName: (context) => FiltersScreen(_filters, _setFilters),
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
