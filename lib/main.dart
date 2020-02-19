import 'package:drinksdemo/categories_screen.dart';
import 'package:drinksdemo/category_drinks_screen.dart';
import 'package:drinksdemo/screens/drink_detail_screen.dart';
import 'package:drinksdemo/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        '/' : (context) => TabsScreen(),
        CategoryDrinksScreen.routeName: (context) => CategoryDrinksScreen(),
        DrinkDetailScreen.routeName: (context) => DrinkDetailScreen(),
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
    );
  }
}
