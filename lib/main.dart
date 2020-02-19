import 'package:drinksdemo/categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'DrinkGuide',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: CategoriesScreen(),
    );
  }
}